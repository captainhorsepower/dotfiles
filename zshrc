# Set Variables
export DOTFILES="$HOME/.dotfiles"

# My awesome aliases

# Colorful ls
alias ls='command exa -lF --git'
alias lst='ls --sort age'

alias exa='exa -laF --git --git-ignore'
alias exat='exa --sort age'

# Colorful manpage
alias man='batman'

# Colorful cat
alias cat='bat'

# Customize Prompt(s)

# PROMPT='
# %1~ %L %# '

RPROMPT='%*'

# Write Handy Functions

function mkcd() {
  mkdir -p "$@" && cd "$_";
}

# Ensure Brewfile is only created in ~/.dotfiles directory
function bbd() {

  local startingDirectory=$PWD;

  if [[ $startingDirectory != $DOTFILES ]]; then
    echo "Changing to $DOTFILES";
    cd $DOTFILES;
  fi

  echo "Dumping Brewfile";
  brew bundle dump --force --describe  --no-lock;

  if [[ $startingDirectory != $DOTFILES ]]; then
    echo "Returning to $startingDirectory";
    cd $startingDirectory;
  fi

}

# Completions

# Brew TODO: move it to somewhare else
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi

### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
### End of Zinit's installer chunk

# Finally! enable so good fucking completions 
# https://stackoverflow.com/a/22627273/9253292
# TODO: figure out what a hell is happening
zstyle ':completion:*' completer _complete
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' '+l:|=* r:|=*'
autoload -Uz compinit; compinit

# TODO what do ice and compile mean?
# TODO add space between `branch` and `*` 
# TODO still not good way to customize theme (and id doesn't show up in prompt -l...)
zinit ice compile'(pure|async).zsh' pick'async.zsh' src'pure.zsh'
zinit light sindresorhus/pure

# TODO accept tab completion based on history
# bindkey '^I' autosuggest-accept 
# - this is bad, cuz accepts the whole line and disables prev TAB functionality.
# - opt + -> does what i want, but not perfect
zinit ice silent wait:1 atload:_zsh_autosuggest_start
zinit light zsh-users/zsh-autosuggestions

# may be load in turbo? 
# FIXME wtf how to uninstall it?
zinit light zsh-users/zsh-completions


# TODO configure colors
zinit light zdharma/fast-syntax-highlighting