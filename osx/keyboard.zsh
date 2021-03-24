hotkeys_plist=~/Library/Preferences/com.apple.symbolichotkeys.plist

# disable spotlight before alfred

# disable Show Spotlight search
plutil -replace AppleSymbolicHotKeys.64.enabled -bool NO $hotkeys_plist
# disable Show Finder search window
plutil -replace AppleSymbolicHotKeys.65.enabled -bool NO $hotkeys_plist

# other codes
# input source: 
# - 60 (select next) ctrl + space
# - 61 (slect previous) ctrl + alt + space

# safari