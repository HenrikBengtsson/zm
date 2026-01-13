SHELL=bash

all: shellcheck README.md

shellcheck:
	shellcheck bin/zm

## Regenerate README.md
README.md: README.md.tmpl bin/zm
	@help=$$(bin/zm --help 2> /dev/null || true); \
	bfr=$$(cat "$<"); \
	bfr="$${bfr/\{\{ HELP \}\}/$$help}"; \
	printf "$$bfr" > "$@.tmp"
	grep -E "^Version" "$@.tmp"
	@mv "$@.tmp" "$@"
	@echo "$@"
