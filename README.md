# Dotfiles

This time inspired by Dotbot creator.

The idea is to keep 'base' `dotfiles` config (portable across all systems) 
in the main dotfiles repo. This repo can (and should be public). 
And it's the one to bring to ssh servers with you.

For OS / machine local config, use separate repo (eg `dotfiles_local`)
and create a separate branch for all machines. 
This repo can be private, and thus even contain stuff like ssh keys.

## Currently embraced structure

For simplicity, I'll use 'simple profiles' [via modifying install scripts](https://github.com/anishathalye/dotbot/wiki/Tips-and-Tricks#simple-setup).

So all my configs are still in the same repo, but are not installed all at once.

## What's immediately wrong

Need to add workarounds for brew, java, bat, exa in zshrc.

To fix that, at least need 'local customizations'

handle java versioning (good start at https://stackoverflow.com/questions/21964709/how-to-set-or-change-the-default-java-jdk-version-on-os-x)

----

Installing deps without brew

### fzf https://github.com/junegunn/fzf#installation

```zsh
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```

update: `cd ~/.fzf && git pull && ./install`

### thefuck https://github.com/nvbn/thefuck

install this 
``` 
sudo apt update
sudo apt install python3-dev python3-pip python3-setuptools
sudo pip3 install thefuck
```

zinit + plugin should to the rest?


## TODO:

1. Better dotfiles config
    - use dotbot profiles and separate osx startup-config from other stuff...
        - [ ] split dotfiles dir (osx, shell, java, python, etc)
        - [ ] add sample profiles
        - [ ] make it burn

    - setup vim and python


1. zsh improvements
    - zsh -g and -s aliases
    - zsh spelling correction
    - install fzf and thefuck

1. vscode setup
    - filter out extensions
    - automate install process
    - extensions to try out!

        - is gitlens good enough to replace git GUI like sourcetree? https://github.com/eamodio/vscode-gitlens/issues/472
        
        - bitbucket plugins 
            - official one allows to work with issues
            - see bitbucket pipelines status


1. More shell tools and CLIs to try out:
    - tmux https://thoughtbot.com/blog/a-tmux-crash-course
    - https://mikebuss.com/2014/02/02/a-beautiful-productive-terminal-experience/

    - ack instead of grep
    - check bat-extras and filter out when it's too much...

    - ffmpeg and imagemagick. 
    - tesseract

    - check out [git filter-repo](https://github.com/newren/git-filter-repo)
    - check out [bit](https://github.com/chriswalz/bit)


1. [Whalebrew](https://github.com/whalebrew/whalebrew)
    - bring CLI programs with complicated deps with you as docker images!
    - but can it packet something like remote-viewer?


## More dudes to take a look at:

(Python / CV / Robotics guy from YouTube)[https://github.com/safijari]
    - has insane setup with spacemacs and and just live inside terminal
      (and look damn cosy, I'd live there also)
    - knows and shows how to setup python stuff, including c++ bindings, JIT...

Dotfiles creator. 
    - blogs and thoughts on structure of dotfiles repo(s)
    - and (his github)[https://github.com/anishathalye]


Old dude that loves speeeeed:
    - https://medium.com/@rwxrob/tmux-fail-use-vscode-d1ce05c7beb1
    - https://rwx.gg/tools/editors/vi/how/magic/


----

This is my first dotfiles repo! Initially inspired by [dotfiles.eieio.xyz](http://dotfiles.eieio.xyz) and fireship.io 100-seconds-of-dotfiles.