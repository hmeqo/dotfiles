# Inline syntax highlighter colors unified with fish's default theme.
#
# Mapping (fish var -> style):
#   command/keyword/builtin/alias  -> blue            (fg=4)
#   param / option                 -> cyan            (fg=6, applied via `default`)
#   quote                          -> yellow          (fg=3)
#   redirection                    -> cyan bold       (fg=6,bold)
#   end (;&|)                      -> green           (fg=2)
#   operator/escape                -> bright cyan     (fg=14)
#   error                          -> bright red      (fg=9)
#   comment                        -> red             (fg=1)
#   option (--/-)                  -> cyan            (fg=6)
#   autosuggestion                 -> bright black    (fg=8)
# Must stay a late-loaded file so it wins over module defaults.

typeset -gA ZSH_HIGHLIGHT_STYLES

ZSH_HIGHLIGHT_STYLES[default]='fg=6'
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=9'

ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=4'
ZSH_HIGHLIGHT_STYLES[alias]='fg=4'
ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=4'
ZSH_HIGHLIGHT_STYLES[global-alias]='fg=4'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=4'
ZSH_HIGHLIGHT_STYLES[function]='fg=4'
ZSH_HIGHLIGHT_STYLES[command]='fg=4'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=4'
ZSH_HIGHLIGHT_STYLES[hashed-command]='fg=4'
ZSH_HIGHLIGHT_STYLES[autodirectory]='fg=4'

ZSH_HIGHLIGHT_STYLES[path]='fg=6,underline'
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=6'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=6'
ZSH_HIGHLIGHT_STYLES[globbing]='fg=6'

ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=2'
ZSH_HIGHLIGHT_STYLES[redirection]='fg=6,bold'

ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=3'
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]='fg=3'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=3'
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]='fg=14'
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]='fg=14'
ZSH_HIGHLIGHT_STYLES[back-dollar-quoted-argument]='fg=14'
ZSH_HIGHLIGHT_STYLES[rc-quote]='fg=6'

ZSH_HIGHLIGHT_STYLES[history-expansion]='fg=14'
ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter]='fg=14'
ZSH_HIGHLIGHT_STYLES[process-substitution-delimiter]='fg=14'
ZSH_HIGHLIGHT_STYLES[back-quoted-argument-delimiter]='fg=14'

ZSH_HIGHLIGHT_STYLES[assign]='fg=6'
ZSH_HIGHLIGHT_STYLES[comment]='fg=1'

# fish: brblack == xterm 256 index 8
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'
