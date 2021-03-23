#!/usr/bin/env zsh

echo "\n<<< Starting Homebrew Setup >>>\n"

if exists brew; then
  echo "brew exists, skipping install"
else
  echo "brew doesn't exist, continuing with install"
  # FIXME on tapping it called xcodebuild (i can't do that without install...) ans Xcode was being verified forever.
  # this might be just because I have catalina on second drive (and for some fucking reason it's picked up....)
  # or it should actually be fixed (somehow) with xattr -rd com.apple.qurantine $(which xcodebuild))
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

# This works to solve the Insecure Directories issue:
# compaudit | xargs chmod go-w
# But this is from the Homebrew site, though `-R` was needed:
# https://docs.brew.sh/Shell-Completion#configuring-completions-in-zsh
chmod -R go-w "$(brew --prefix)/share"


# TODO: Keep an eye out for a different `--no-quarantine` solution.
# Currently, you can't do `brew bundle --no-quarantine` as an option.
# export HOMEBREW_CASK_OPTS="--no-quarantine --no-binaries"
# https://github.com/Homebrew/homebrew-bundle/issues/474

# HOMEBREW_CASK_OPTS is exported in `zshenv` with
# `--no-quarantine` and `--no-binaries` options,
# which makes them available to Homebrew for the
# first install (before our `zshrc` is sourced).

# FIXME can it be removed and picked up from .zshenv?
# FIXME mas is dumb, and mixes apps from two installed system.
# also need to make sure I'm signed in to app store before running mas stuff.
HOMEBREW_CASK_OPTS='--no-quarantine' brew bundle --verbose

# echo "Installing VS Code Extensions"
# cat vscode_extensions | xargs -L 1 code --install-extension

