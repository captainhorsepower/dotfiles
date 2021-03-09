# Aliases

alias ls='ls -lAFh'

# Customize Prompt(s)

PROMPT='
%1~ %L %# '

RPROMPT='%*'

# Functions

function mkcd() {
  mkdir -p "$@" && cd "$_";
  # $@ -- all args
  # $_ -- last arg
}
