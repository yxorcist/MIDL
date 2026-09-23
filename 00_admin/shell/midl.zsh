# MIDL: one command for study sessions.
typeset -g MIDL_ROOT="${MIDL_ROOT:-${${(%):-%N}:A:h:h:h}}"

midl() {
  python3 "$MIDL_ROOT/00_admin/midl.py" "$@"
}

_midl() {
  if (( CURRENT == 2 )); then
    local -a commands
    commands=(
      'md:Méthodes discrètes'
      'al:Algèbre linéaire'
      'si:Systèmes information'
      'pa:Programmation avancée'
      'fvr:Fonctions variable réelle'
      'pn:Programmation numérique'
      'en:Anglais'
      'inbox:send file or folder to Google Drive INBOX'
      'compile:compile publishable PDFs'
      'doctor:check MIDL dependencies'
      'help:show help'
    )
    _describe 'subject or command' commands
    return
  fi

  if [[ "${words[2]}" == "inbox" ]] && (( CURRENT >= 3 )); then
    _files
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
