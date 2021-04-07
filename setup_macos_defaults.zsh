#!/usr/bin/env zsh

# inspiration and source of copy-paste
# - https://github.com/benitolopez/dotfiles-macos/blob/master/.macos
# - dotfiles.eieieo.xyz

echo "\n<<< Starting macOS Setup >>>\n"

osascript -e 'tell application "System Preferences" to quit'

# Finder > View > Show Status Bar
defaults write com.apple.finder ShowStatusBar -bool false

# Finder > View > Show Path Bar
defaults write com.apple.finder ShowPathbar -bool true
# Finder > Settings > advanced show warnings
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
defaults write com.apple.finder FXEnableRemoveFromICloudDriveWarning -bool false
# TODO: set default view to list; add Projects and home folders to sidebar.

# TODO: Keyboard -> Input Sources -> automaticlly change to document language
# keyboard -> text -> disable spelling auto-correction

# TODO: displays (scaling)

# https://github.com/diimdeep/dotfiles/blob/master/osx/configure/hotkeys.sh
# TODO: build up list of my keybindings :^) they actually require restart, lol.
# plutil -extract AppleSymbolicHotKeys.64 xml1 -o test.xml /Users/cap_vrby/Library/Preferences/com.apple.symbolichotkeys.plist
# and discover all other wanted settings:
# defaults read > before
# defaults read > after; code --diff before after

# plutil -extract AppleSymbolicHotKeys.64 json -o test.xml -r /Users/cap_vrby/Library/Preferences/com.apple.symbolichotkeys.plist


# Dock

# System Preferences > Dock

defaults write com.apple.dock magnification -bool true
defaults write com.apple.dock tilesize -int 44
defaults write com.apple.dock largesize -int 73
defaults write com.apple.dock autohide -bool true

# for vscode Vim; is a restart necessary?
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false         # For VS Code
# defaults write com.microsoft.VSCodeInsiders ApplePressAndHoldEnabled -bool false # For VS Code Insider
# defaults write com.visualstudio.code.oss ApplePressAndHoldEnabled -bool false    # For VS Codium
# defaults delete -g ApplePressAndHoldEnabled                                      # If necessary, reset global default
# defaults write com.apple.dock autohide-time-modifier -float 0.25
# defaults write com.apple.dock autohide-delay -float 0.1

# Hyper: fix press-and-hold-navigation in vim
defaults write co.zeit.hyper ApplePressAndHoldEnabled -bool false

# Finish macOS Setup
killall Finder
killall Dock

echo "\n<<< macOS Setup Complete.
    A logout or restart might be necessary. >>>\n"