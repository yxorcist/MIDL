# MIDL: one command for study sessions.
typeset -g MIDL_ROOT="${MIDL_ROOT:-${${(%):-%N}:A:h:h:h}}"

midl() {
  python3 "$MIDL_ROOT/00_admin/midl.py" "$@"
}

_midl() {
  if (( CURRENT == 2 )); then
    _values 'subject or command' \
      md al si pa fvr pn en \
      status push compile doctor help
    return
  fi
  if (( CURRENT == 3 )); then
    case "${words[2]}" in
      md|al|fvr) _values 'type' cm td ;;
      si|pn)     _values 'type' cm td tp ;;
      pa)        _values 'type' cm tp ;;
      en)        _values 'type' work ;;
    esac
  fi
}
compdef _midl midl
