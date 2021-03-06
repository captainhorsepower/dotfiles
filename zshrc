# Set Variables
export DOTFILES="$HOME/.dotfiles"
# FIXME this is setup/mac specific stuff; can't bring that to server!
# Will just comment all out until insted of if-else forest. Will fix with local configs and repos
# export JAVA_HOME=`/usr/libexec/java_home -v 15`

# My awesome aliases

# FIXME: add idea and uao aliases

# Colorful ls
# alias ls='command exa -lF'
# alias lst='ls --sort age'

# alias exa='exa -laF'
# alias exat='exa --sort age'

# Colorful manpage
# alias man='batman'

# Colorful cat
# alias cat='bat'

# Customize Prompt(s)

# PROMPT='
# %1~ %L %# '

RPROMPT='%*'

# Write Handy Functions

function mkcd() {
  mkdir -p "$@" && cd "$_";
}

# Ensure Brewfile is only created in ~/.dotfiles directory
#function bbd() {
#
#  local startingDirectory=$PWD;
#
#  if [[ $startingDirectory != $DOTFILES ]]; then
#    echo "Changing to $DOTFILES";
#    cd $DOTFILES;
#  fi
#
#  echo "Dumping Brewfile";
#  brew bundle dump --force --describe  --no-lock;
#
#  if [[ $startingDirectory != $DOTFILES ]]; then
#    echo "Returning to $startingDirectory";
#    cd $startingDirectory;
#  fi
#
#}

# Completions

# Brew TODO: move it to somewhare else
#if type brew &>/dev/null; then
#  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
#
#  autoload -Uz compinit
#  compinit
#fi

# Commenting out upper brew completions took out the only compinit.
# Compinit makes my zstyle comletions (ignore case, fuzzy-ish matching) work
# So want to restart it here
function enable_compinit() {
    autoload -Uz compinit
    compinit  
}
exists compinit || enable_compinit


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


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
# more on zstyle https://unix.stackexchange.com/a/214699
# FIXME: it's broken (ls .zsh -> ls setup_ew.zsh)
# https://stackoverflow.com/questions/24226685/have-zsh-return-case-insensitive-auto-complete-matches-but-prefer-exact-matches
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# TODO what do ice and compile mean?
# TODO add space between `branch` and `*` 
# TODO still not good way to customize theme (and id doesn't show up in prompt -l...)
zinit ice compile'(pure|async).zsh' pick'async.zsh' src'pure.zsh'
zinit light sindresorhus/pure


# adds diff-so-fancy to the PATH and configures git-dsf command
# https://github.com/zdharma/zsh-diff-so-fancy
zinit ice as"program" pick"bin/git-dsf"
zinit light zdharma/zsh-diff-so-fancy


# Thefuck as plugin! https://github.com/laggardkernel/zsh-thefuck 
# this one works does the job instead of eval $(thefuck --alias)
zinit ice wait'1' lucid
zinit light laggardkernel/zsh-thefuck


# TODO accept tab completion based on history
# bindkey '^I' autosuggest-accept 
# - this is bad, cuz accepts the whole line and disables prev TAB functionality.
# - opt + -> does what i want, but not perfect
# looks helpful https://gist.github.com/flixr/1468156#file-zshrc-L73
zinit ice silent wait:1 atload:_zsh_autosuggest_start
zinit light zsh-users/zsh-autosuggestions

# TODO configure colors
# TODO: don't highligt in purple accepted path comletion
zinit light zdharma/fast-syntax-highlighting
