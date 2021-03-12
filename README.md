# Dotfiles

This is my first dotfiles repo! Inspired and curated by [dotfiles.eieio.xyz](http://dotfiles.eieio.xyz).

## How it all works

Most of bootstrapping is done by [Dotbot](https://github.com/anishathalye/dotbot).
It creates symlinks, folders, and runs scripts that I want.

@see [install.conf.yaml](./install.conf.yaml) to see what it's actually doing

## Restore Instructions

1. `xcode-select --install` (Command Line Tools are required for Git and Homebrew)
2. clone dotfiles repo to `~/.dotfiles`; `cd ~/.dotfiles`
5. Do one last Software Audit by editing [Brewfile](Brewfile) directly.
6. [`./install`](install)
7. Restart computer.
8. Setup up Dropbox (use multifactor authentication!) and allow files to sync before setting up dependent applications. Alfred settings are stored here. Mackup depends on this as well (and thus so do Terminal and VS Code).
9. Run `mackup restore`. Consider doing a `mackup restore --dry-run --verbose` first.
10. [Generate ssh key](https://help.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh), add to GitHub, and switch remotes.

    ```zsh
    # Generate SSH key in default location (~/.ssh/config)
    ssh-keygen -t rsa -b 4096 -C "66495007+eieioxyz@users.noreply.github.com"

    # Start the ssh-agent
    eval "$(ssh-agent -s)"

    # Create config file with necessary settings
    << EOF > ~/.ssh/config
    Host *
      AddKeysToAgent yes
      UseKeychain yes
      IdentityFile ~/.ssh/id_rsa
    EOF

    # Add private key to ssh-agent 
    ssh-add -K ~/.ssh/id_rsa

    # Copy public key and add to github.com > Settings > SSH and GPG keys
    pbcopy < ~/.ssh/id_rsa.pub

    # Test SSH connection, then verify fingerprint and username
    # https://help.github.com/en/github/authenticating-to-github/testing-your-ssh-connection
    ssh -T git@github.com

    # Switch from HTTPS to SSH
    git remote set-url origin git@github.com:eieioxyz/dotfiles_macos.git
    ```



TODO:

1. zsh setup
    - completions
    - funcitons
    - zsh plugins
    - need a beutiful theme with pictures and emojis
        - oh my zsh vs hyper.js https://medium.com/@ssharizal/hyper-js-oh-my-zsh-as-ubuntu-on-windows-wsl-terminal-8bf577cdbd97

1. macOs prefs:
    - First, make sure default shell is zsh: `chsh -s /bin/zsh`
    - mission control: don't rearrange workspaces 
    - finder.view: show path bar 
    - hide or unmount extra volumes 
    - three finger drag: accessability.pointer control.trackpad options; disable tap-to-click. 
    - touchbar: replace siry with input-source
    - cutom safari keybindings
    - https://github.com/benitolopez/dotfiles-macos/blob/master/.macos
    - https://about.gitlab.com/blog/2020/04/17/dotfiles-document-and-automate-your-macbook-setup/
    - https://www.intego.com/mac-security-blog/unlock-the-macos-docks-hidden-secrets-in-terminal/
    - https://macos-defaults.com/#🙋-what-s-a-defaults-command

1. vscode setup
    - filter out extensions
    - automate install process
    - integrate with vim!
    - learn and use vim, ex
    - https://github.com/VSCodeVim/Vim/network/dependents?package_id=UGFja2FnZS0xMzYyNjc2Mg%3D%3D

1. Look through brew file

1. backup intellij IDEA (and isntall!)
1. install docker; what is whalebrew

1. fish vs zsh
1. ack instead of grep
1. check bat-extras and filter out when it's too much...
1. integrate neofetch funstuff

1. play with gitkraken, alfred. Backup their prefs.. 
    - maybe gitlens is good enough? https://github.com/eamodio/vscode-gitlens/issues/472
1. mackup

1. ffmpeg and imagemagick. 
1. tesseract

1. what is git difftool and how to use it?
   ```gitconfig
   [diff]
       tool = vscode
   [difftool "vscode"]
       cmd = code --wait --diff $LOCAL $REMOTE
   ```
1. choose git log / graph alias
    - https://stackoverflow.com/questions/1057564/pretty-git-branch-graphs

1. fix repo urls in description 
1. check out [git filter-repo](https://github.com/newren/git-filter-repo)
1. check out [bit](https://github.com/chriswalz/bit)

1. take care of mac:
    - Reset SMC and PRAM. 
        - https://softwaretested.com/mac/repair-cannot-be-performed-because-one-or-more-volumes-are-mounted/
        - https://osxdaily.com/2019/01/14/how-reset-smc-macbook-air-pro-2018-later/
    - clean reinstall
    - cron jobs:
        - unmount unwanted volumes 
            - https://apple.stackexchange.com/questions/301023/how-to-prevent-an-encrypted-apfs-volume-from-automatically-mounting
            - https://forums.macrumors.com/threads/how-to-list-all-unmounted-disks-volumes.1761144/
    - bootable copy of the system
        - https://www.belightsoft.com/products/resources/apfs-bootable-clone-with-command-line
        -  https://gist.github.com/darwin/3c92ac089cf99beb54f1108b2e8b4b9f
    - apfs
        - https://discussions.apple.com/thread/8488224
    - bootcamp installations
        - https://discussions.apple.com/thread/252041686
        - https://meiokubo.medium.com/nerdy-big-sur-transitioning-guide-2ab70c5139
    - window manager for macOS ?
        - snap windows within one desktop
        - handle windows when on connect/disconnect monitor

