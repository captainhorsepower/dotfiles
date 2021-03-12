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
    - aliases and colorization
    - zsh plugins
1. macOs prefs:
   - First, make sure default shell is zsh: `chsh -s /bin/zsh`
   - mission control: don't rearrange workspaces 
   - finder.view: show path bar 
   - hide or unmount extra volumes 
   - three finger drag: accessability.pointer control.trackpad options; disable    tap-to-click. 
   - touchbar: replace siry with input-source

1. what is git difftool and how to use it?
   ```gitconfig
   [diff]
       tool = vscode
   [difftool "vscode"]
       cmd = code --wait --diff $LOCAL $REMOTE
   ```

1. fix repo urls in description 
1. check out [git filter-repo](https://github.com/newren/git-filter-repo)

