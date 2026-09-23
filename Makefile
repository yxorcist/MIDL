SHELL := /bin/bash
.DEFAULT_GOAL := compile
MIDL := python3 00_admin/midl.py

.PHONY: compile doctor shell-install clean

compile:
	@$(MIDL) compile

doctor:
	@$(MIDL) doctor

shell-install:
	@touch "$$HOME/.zshrc"
	@line="source '$$(pwd)/00_admin/shell/midl.zsh'"; \
	grep -Fqx "$$line" "$$HOME/.zshrc" || printf '\n%s\n' "$$line" >> "$$HOME/.zshrc"
	@echo 'MIDL ready. Run: source ~/.zshrc'

clean:
	@rm -rf dist .midl/build-state.json
	@echo 'removed dist/ and incremental build state'
