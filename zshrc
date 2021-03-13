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
  brew bundle dump --force --describe;

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

# configure prompt
# TODO what do ice and compile mean?
zinit ice compile'(pure|async).zsh' pick'async.zsh' src'pure.zsh'
zinit light sindresorhus/pure

zinit light zdharma/fast-syntax-highlighting