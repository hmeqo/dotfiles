function load_input_method_env() {
  if [[ "$#" -ne 0 ]]; then
    GTK_IM_MODULE=fcitx QT_IM_MODULE=fcitx XMODIFIERS=@im=fcitx SDL_IM_MODULE=fcitx INPUT_METHOD=fcitx GLFW_IM_MODULE=ibus "$@"
  else
    export GTK_IM_MODULE=fcitx
    export QT_IM_MODULE=fcitx
    export XMODIFIERS=@im=fcitx
    export SDL_IM_MODULE=fcitx
    export INPUT_METHOD=fcitx
    export GLFW_IM_MODULE=ibus
  fi
}
