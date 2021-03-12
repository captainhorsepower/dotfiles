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

# Completions

# Brew
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi
