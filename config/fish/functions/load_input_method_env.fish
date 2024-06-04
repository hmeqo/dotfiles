function load_input_method_env
  if count $argv > 0
    GTK_IM_MODULE=fcitx QT_IM_MODULE=fcitx XMODIFIERS=@im=fcitx SDL_IM_MODULE=fcitx INPUT_METHOD=fcitx GLFW_IM_MODULE=ibus $argv
  else
    set -gx GTK_IM_MODULE fcitx
    set -gx QT_IM_MODULE fcitx
    set -gx XMODIFIERS @im=fcitx
    set -gx SDL_IM_MODULE fcitx
    set -gx INPUT_METHOD fcitx
    set -gx GLFW_IM_MODULE ibus
  end
end
