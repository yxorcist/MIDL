# MIDL shell helpers for zsh.
# Source this file from ~/.zshrc after cloning the repository.

typeset -g MIDL_ROOT="${MIDL_ROOT:-${${(%):-%N}:A:h:h}}"
typeset -g MIDL_REMOTE="${MIDL_REMOTE:-gdrive:MIDL}"

_midl_subject_dir() {
  case "${1:l}" in
    md|methodes) print -r -- "01_methodes_discretes" ;;
    al|alg)      print -r -- "02_algebre_lineaire" ;;
    si)          print -r -- "03_systemes_information" ;;
    pa)          print -r -- "04_programmation_avancee" ;;
    fvr)         print -r -- "05_fonctions_variable_reelle" ;;
    pn)          print -r -- "06_prog_numerique" ;;
    en)          print -r -- "07_anglais" ;;
    *) return 1 ;;
  esac
}

_midl_kind_dir() {
  case "${1:l}" in
    cm)       print -r -- "CM" ;;
    td)       print -r -- "TD" ;;
    tp)       print -r -- "TP" ;;
    projects|project|p) print -r -- "PROJECTS" ;;
    resources|res|r)    print -r -- "resources" ;;
    *) return 1 ;;
  esac
}

midl() {
  if (( $# == 0 )); then
    cd "$MIDL_ROOT"
    return
  fi

  local subject
  subject="$(_midl_subject_dir "$1")" || {
    print -u2 "midl: unknown subject '$1'"
    return 1
  }

  local target="$MIDL_ROOT/$subject"
  if (( $# >= 2 )); then
    local kind
    kind="$(_midl_kind_dir "$2")" || {
      print -u2 "midl: unknown area '$2'"
      return 1
    }
    target="$target/$kind"
  fi

  if [[ ! -d "$target" ]]; then
    print -u2 "midl: folder does not exist: $target"
    return 1
  fi

  cd "$target"
}

midl-note() {
  if (( $# < 2 )); then
    print -u2 "usage: midl-note <subject> <td|tp>"
    return 1
  fi

  local path
  path="$(python3 "$MIDL_ROOT/00_admin/midl.py" new "$@")" || return 1
  local absolute="$MIDL_ROOT/$path"

  cd "${absolute:h}" || return 1
  "${EDITOR:-nvim}" "${absolute:t}"
}

midl-status() {
  python3 "$MIDL_ROOT/00_admin/midl.py" status --remote "$MIDL_REMOTE"
}

midl-publish() {
  python3 "$MIDL_ROOT/00_admin/midl.py" publish --remote "$MIDL_REMOTE" "$@"
}

midl-doctor() {
  python3 "$MIDL_ROOT/00_admin/midl.py" doctor --remote "$MIDL_REMOTE"
}

midl-watch() {
  local file="${1:-}"
  if [[ -z "$file" ]]; then
    file="$(ls -1t -- *.typ(N) 2>/dev/null | head -n 1)"
  fi
  if [[ -z "$file" ]]; then
    print -u2 "midl-watch: no .typ file found"
    return 1
  fi
  typst watch --root "$MIDL_ROOT" "$file"
}
