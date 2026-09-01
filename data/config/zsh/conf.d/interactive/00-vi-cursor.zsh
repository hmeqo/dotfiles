function zle-keymap-select() {
  case $KEYMAP in
    vicmd)      echo -ne '\e[2 q' ;;
    viins|main) echo -ne '\e[6 q' ;;
  esac
}
zle -N zle-keymap-select

function zle-line-init() {
  echo -ne '\e[6 q'
}
zle -N zle-line-init

function zle-line-finish() {
  echo -ne '\e[1 q'
}
zle -N zle-line-finish
