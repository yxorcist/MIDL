SHELL := /bin/bash
.ONESHELL:
.SHELLFLAGS := -eu -o pipefail -c
.DEFAULT_GOAL := publish

REMOTE ?= gdrive:MIDL
DRIVE_LAYOUT ?= 00_admin/drive-layout.txt
TIMESTAMP ?= $(shell date '+%Y-%m-%d_%H-%M-%S')
ARCHIVE_REMOTE := $(REMOTE)/99_ARCHIVE/generated
MIDL_TOOL := python3 00_admin/midl.py

.PHONY: help check check-rclone list status doctor compile publish publish-dry-run drive-bootstrap snapshot shell-install clean clean-state

help:
	@printf '%s\n' \
	  'MIDL commands:' \
	  '  make / make publish   Incremental compile + upload of NEW/CHANGED PDFs only' \
	  '  make status           Show NEW / CHANGED / UNCHANGED / ORPHAN entrypoints' \
	  '  make publish-dry-run  Show what would be compiled/uploaded' \
	  '  make compile          Compile every publishable Typst entrypoint; no Drive access' \
	  '  make snapshot         Full local rebuild + timestamped archive copy to Drive' \
	  '  make drive-bootstrap  Create missing Drive folders; never delete files' \
	  '  make shell-install    Add MIDL zsh helpers to ~/.zshrc' \
	  '  make doctor           Check git/python/typst/rclone and the Drive remote' \
	  '  make list             List publishable Typst entrypoints' \
	  '  make clean            Remove local generated PDFs but keep build state' \
	  '  make clean-state      Remove local build state; next publish will re-evaluate all files' \
	  '' \
	  'Default remote: $(REMOTE)'

check:
	@command -v python3 >/dev/null 2>&1 || { echo 'error: python3 is not installed or not in PATH' >&2; exit 1; }
	@command -v typst >/dev/null 2>&1 || { echo 'error: typst is not installed or not in PATH' >&2; exit 1; }

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
	@find . -type f \( \
	  -name 'cours.typ' -o \
	  -name 'chapitre.typ' -o \
	  -path '*/TD/notes/*.typ' -o \
	  -path '*/TP/notes/*.typ' \
	\) -not -path './.git/*' -not -path './.midl/*' | sort

status:
	@$(MIDL_TOOL) status --remote '$(REMOTE)'

doctor:
	@$(MIDL_TOOL) doctor --remote '$(REMOTE)'

compile: check
	@$(MIDL_TOOL) publish --all --no-upload
	@mkdir -p '.midl'
	@typst compile --root "`pwd`" '00_admin/tests/session-note-smoke.typ' '.midl/session-note-smoke.pdf'
	@rm -f '.midl/session-note-smoke.pdf'

drive-bootstrap: check-rclone
	@test -f '$(DRIVE_LAYOUT)' || { echo 'error: missing $(DRIVE_LAYOUT)' >&2; exit 1; }
	@echo "Ensuring MIDL Drive workspace exists under $(REMOTE)"
	@while IFS= read -r path || [[ -n "$$path" ]]; do
	  [[ -z "$$path" || "$$path" == \#* ]] && continue
	  rclone mkdir "$(REMOTE)/$$path"
	done < '$(DRIVE_LAYOUT)'
	@echo 'Drive workspace ready.'

publish: check check-rclone drive-bootstrap
	@$(MIDL_TOOL) publish --remote '$(REMOTE)'

publish-dry-run:
	@$(MIDL_TOOL) publish --remote '$(REMOTE)' --dry-run

snapshot: check check-rclone drive-bootstrap
	@$(MIDL_TOOL) publish --all --no-upload
	@echo "Archiving complete generated library to $(ARCHIVE_REMOTE)/$(TIMESTAMP)"
	@rclone copy '.midl/build' '$(ARCHIVE_REMOTE)/$(TIMESTAMP)' --progress
	@echo "Snapshot archived: $(ARCHIVE_REMOTE)/$(TIMESTAMP)"

shell-install:
	@touch "$$HOME/.zshrc"
	@line="source '$$(pwd)/00_admin/shell/midl.zsh'"
	@if grep -Fqx "$$line" "$$HOME/.zshrc"; then
	  echo 'MIDL shell helpers already installed.'
	else
	  printf '\n%s\n' "$$line" >> "$$HOME/.zshrc"
	  echo 'Installed MIDL shell helpers in ~/.zshrc'
	  echo 'Run: source ~/.zshrc'
	fi

clean:
	@rm -rf -- '.midl/build'
	@echo 'Removed local generated PDFs; build state preserved.'

clean-state:
	@rm -f -- '.midl/build-state.json'
	@echo 'Removed local build state. Remote state is untouched.'
