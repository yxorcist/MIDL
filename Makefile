SHELL := /bin/bash
.ONESHELL:
.SHELLFLAGS := -eu -o pipefail -c
.DEFAULT_GOAL := publish

DIST_ROOT ?= dist
TIMESTAMP ?= $(shell date '+%Y-%m-%d_%H-%M-%S')
SNAPSHOT_DIR := $(DIST_ROOT)/$(TIMESTAMP)
REMOTE ?= gdrive:MIDL

.PHONY: help check check-rclone list compile publish publish-dry-run clean

help:
	@printf '%s\n' \
	  'MIDL publishing commands:' \
	  '  make                 Compile courses + chapter PDFs and upload a timestamped snapshot to Google Drive' \
	  '  make compile         Compile courses + chapter PDFs locally only' \
	  '  make publish         Same as make' \
	  '  make publish-dry-run Compile, then show what rclone would upload' \
	  '  make list            List cours.typ and chapitre.typ entry points' \
	  '  make clean           Remove generated local snapshots' \
	  '' \
	  'Defaults:' \
	  '  DIST_ROOT=dist' \
	  '  REMOTE=gdrive:MIDL' \
	  '  TIMESTAMP=YYYY-MM-DD_HH-MM-SS' \
	  '' \
	  'Example override:' \
	  '  make publish REMOTE=gdrive:documents/MIDL'

check:
	@command -v typst >/dev/null 2>&1 || { echo 'error: typst is not installed or not in PATH' >&2; exit 1; }
	@count="$$(find . -type f \( -name 'cours.typ' -o -name 'chapitre.typ' \) -not -path './$(DIST_ROOT)/*' -not -path './.git/*' | wc -l)"
	if [[ "$$count" -eq 0 ]]; then
	  echo 'error: no cours.typ or chapitre.typ files found' >&2
	  exit 1
	fi

check-rclone:
	@command -v rclone >/dev/null 2>&1 || { echo 'error: rclone is not installed or not in PATH' >&2; exit 1; }
	@remote='$(REMOTE)'
	remote_name="$${remote%%:*}:"
	if ! rclone listremotes | grep -Fxq "$$remote_name"; then
	  echo "error: rclone remote $$remote_name is not configured" >&2
	  exit 1
	fi
	if ! rclone lsd "$$remote_name" >/dev/null; then
	  echo "error: cannot access rclone remote $$remote_name" >&2
	  exit 1
	fi

list:
	@find . -type f \( -name 'cours.typ' -o -name 'chapitre.typ' \) -not -path './$(DIST_ROOT)/*' -not -path './.git/*' | sort

compile: check
	@echo "Creating snapshot: $(SNAPSHOT_DIR)"
	@mkdir -p '$(SNAPSHOT_DIR)'
	@while IFS= read -r -d '' src; do
	  rel="$${src#./}"
	  base="$${rel##*/}"
	  if [[ "$$base" == 'chapitre.typ' ]]; then
	    chapter_dir="$${rel%/chapitre.typ}"
	    chapter_dir="$${chapter_dir%/}"
	    chapter_name="$${chapter_dir##*/}"
	    chapter_parent="$${chapter_dir%/*}"
	    out='$(SNAPSHOT_DIR)'/"$$chapter_parent"/"$$chapter_name".pdf
	  else
	    course_dir="$${rel%/cours.typ}"
	    out='$(SNAPSHOT_DIR)'/"$$course_dir"/cours.pdf
	  fi
	  mkdir -p "$$(dirname "$$out")"
	  echo "[typst] $$src -> $$out"
	  typst compile --root . "$src" "$out"
	done < <(find . -type f \( -name 'cours.typ' -o -name 'chapitre.typ' \) -not -path './$(DIST_ROOT)/*' -not -path './.git/*' -print0 | sort -z)
	@{
	  echo 'MIDL PDF snapshot'
	  echo 'timestamp=$(TIMESTAMP)'
	  echo "git_commit=$$(git rev-parse HEAD 2>/dev/null || echo unknown)"
	  echo "git_branch=$$(git branch --show-current 2>/dev/null || echo unknown)"
	} > '$(SNAPSHOT_DIR)/manifest.txt'
	@echo "Local snapshot ready: $(SNAPSHOT_DIR)"

publish: compile check-rclone
	@echo "Uploading to $(REMOTE)/$(TIMESTAMP)"
	@rclone copy '$(SNAPSHOT_DIR)' '$(REMOTE)/$(TIMESTAMP)' --progress
	@echo "Published: $(REMOTE)/$(TIMESTAMP)"

publish-dry-run: compile check-rclone
	@echo "Dry run: $(SNAPSHOT_DIR) -> $(REMOTE)/$(TIMESTAMP)"
	@rclone copy '$(SNAPSHOT_DIR)' '$(REMOTE)/$(TIMESTAMP)' --dry-run --progress

clean:
	@if [[ -z '$(DIST_ROOT)' || '$(DIST_ROOT)' == '/' || '$(DIST_ROOT)' == '.' ]]; then
	  echo 'error: refusing to remove unsafe DIST_ROOT' >&2
	  exit 1
	fi
	@rm -rf -- '$(DIST_ROOT)'
	@echo "Removed $(DIST_ROOT)"
