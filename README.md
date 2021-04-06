# Dotfiles

This is my first dotfiles repo! Inspired and curated by [dotfiles.eieio.xyz](http://dotfiles.eieio.xyz).

## Setup zsh

What I've found: 

- cool features can be added as plugins
- plugin managers:
    - oh-my-zsh is popular but relatively slow
    - antibody is written in go, is easy faster
    - :heavy_check_mark: zinit (previsouly zplugin) is the fastest, 
        - adds turbo mode (asyn plugin loading)
        - seems like the most complicated (steep learning curve)
- plugins that I want:
    - :heavy_check_mark: pure theme. Simple and fast, will use for now.
    - :fire: [thefuck](https://github.com/nvbn/thefuck) corrects typos in previous command
    - :heavy_check_mark: autosugestions https://github.com/zsh-users/zsh-autosuggestions


turns out I like hyper. It's a terminal (electron app), uses webGL. And js allows for really fun stuff within terminal!

TODO:
1. use dotbot profiles and separate osx startup-config from other stuff...
    - [ ] split dotfiles dir (osx, shell, java, python, etc)
    - [ ] add sample profiles
    - [ ] make it burn
1. configure folders in finder sidebar; configure default view to list
1. install docker (and automate it).; `brew install --cask docker`
1. safari: don't close with pinned tab
1. add scripts to eject (other) macos volumes on startup
    - better: don't mount them when disk plugged in.
    - https://stackoverflow.com/questions/25996484/xcode-wont-start-stuck-on-verifying-xcode
1. create backup (with rsync backup)
    - Documents
    - how to restore backup? 
    - (research) add launch agent for backup when disk is connected (like time machine)
    - alfred settings (requires powerpack to change folder, but can try to sync app support folder...) 
    - https://eshop.macsales.com/blog/45185-mac-101-learn-the-power-of-rsync-for-backup-remote-archive-systems/
    - ssh keys; handle ssh-agent and other funky stuff
1. what is proper way to backup ssh? 
    - fun enough, just copied my old .ssh folder and all my keys got restored
    - maybe ssh agent makes sense only with password protected ssh keys
    - it might be a good idea, to password protext ssh keys.
1. dont start dication. or start (maybe it's good)
1. macs fan control. (mayby wont start, actually, cuz not so useful)
1. install sourctree and skip initial setp
    - ~/.gitflow_export file was added, hmm
    - not easily quitable 
1. window manager
    - remember window position and stuff
    - autoconfigure known external monitors (arrangement and orientation)
1. usb keyboard
    - remap cmd and option keys.
    - keyboard -> text -> disable spelling auto-correcit
1. terminal -> advanced -> bell
    - font 16
1. handle java versioning (good start at https://stackoverflow.com/questions/21964709/how-to-set-or-change-the-default-java-jdk-version-on-os-x)
1. dock & menu bar -> clock 
    - 24 hour
    - show day of the week (not show data)
1. don't dim screen while on battery power.
1. install epson drivers and add printer...
1. show downloads in dock
1. configure telegram notifications to automatically hide.
1. vscode extensions 
1. remember input source per window


1. still manual :(
    - add Projects and home directories to finder sidebar
    - terminal:
        - select homebrew theme and customize font.
    - basic vscode settings:
        - close editors instead of windows
        - font size
        - autosave
    - alfred:
        - appearence -> help -> hide icon from menu bar
    - safari -> view -> show status bar (cmd + /)
    - displays -> scaling -> larger text
    - icons in menu bar:
        - `com.apple.Spotlight "NSStatusItem Preferred Position Item-0" = "436.1644";` remove it to hide??? 
        - `"com.apple.TextInputMenuAgent" =     { "NSStatusItem Preferred Position Item-0" = "47.01755"; "NSStatusItem Visible Item-0" = 1;};` ???
        - ```
            "com.apple.controlcenter" =     {
            "NSStatusItem Preferred Position Battery" = 256;
            "NSStatusItem Preferred Position BentoBox" = 183;
            "NSStatusItem Preferred Position Clock" = "83.5";
            "NSStatusItem Preferred Position WiFi" = 217;
            "NSStatusItem Visible Battery" = 1;
            "NSStatusItem Visible BentoBox" = 1;
            "NSStatusItem Visible Clock" = 1;
            "NSStatusItem Visible DoNotDisturb" = 0;
            "NSStatusItem Visible Item-0" = 0;
            "NSStatusItem Visible Item-1" = 0;
            "NSStatusItem Visible Item-2" = 0;
            "NSStatusItem Visible Item-3" = 0;
            "NSStatusItem Visible Item-4" = 0;
            "NSStatusItem Visible WiFi" = 1;
        };
        ```
    - keyboard -> customize controlstrip (old - touchbar)
        - ```
        "com.apple.controlstrip" =     {
        MiniCustomized =         (
            "com.apple.system.brightness",
            "com.apple.system.volume",
            "com.apple.system.mute",
            "com.apple.system.media-play-pause"
        );
        "last-analytics-stamp" =         (
            "638214755.029963"
        );
        ```
    };
    - keyboard -> input sources -> add Russian PC; suspicion: 
        - ```
          NSLinguisticDataAssetsRequested =         (
            en,
            ru
          );
          ```
        - ```
            com.apple.HIToolbox AppleEnabledInputSources --add
            {
                InputSourceKind = "Keyboard Layout";
                "KeyboardLayout ID" = 19458;
                "KeyboardLayout Name" = RussianWin;
            }
           ``` 
        - ```
          "com.apple.TextInputMenu" =     {
            visible = 1;
          };
          "com.apple.TextInputMenuAgent" =     {
              "NSStatusItem Visible Item-0" = 1;
          };
          ```
    - automatically switch to documents input source 
        ````
        defaults read com.apple.HIToolbox AppleGlobalTextInputProperties
        {
            TextInputGlobalPropertyPerContextInput = 1;
        }
    - docker 
        - sign in 
        - where my resources prefs are stored and how to backup them?
        - what is new experimental hypervisor?
    - run aware at startup (add login item?).
    - jetbrains:
        - input license (easy engouh via browser)
        - donwload IDEA
        - restore settings
    - desktop and screensaver 
        - set better wallpapers (from default or event not default, lol)
        - select random screensaver
    - install tachyon (or any other vpn)
    - install пдд беларуси.

1. setup vim and python
1. fun nerdy dude:
    - https://medium.com/@rwxrob/tmux-fail-use-vscode-d1ce05c7beb1
    - https://rwx.gg/tools/editors/vi/how/magic/
    - build opencv python myself https://stackoverflow.com/questions/37070304/how-to-build-opencv-for-python3-when-both-python2-and-python3-are-installed/39409570

1. even better dude: https://github.com/safijari (jack of some on youtube)

1. learn `git add -p`


1. diploma links tmp storage
    - https://blog.rabimba.com/2018/10/arcore-and-arkit-what-is-under-hood.html
    - https://developers.google.com/ar/discover/concepts
    - might find more examples nearby https://github.com/opencv/opencv/blob/3.2.0/samples/python/stereo_match.py
    - https://www.mdpi.com/2073-8994/11/4/570/htm
    - wow https://shkspr.mobi/blog/2018/04/reconstructing-3d-models-from-the-last-jedi/
    - http://lunokhod.org/?p=1446
    - (bad) setup opencv env https://learnopencv.com/install-opencv3-on-macos/
    - contrib modules https://docs.opencv.org/master/
    - core modules https://docs.opencv.org/master/d9/df8/tutorial_root.html
    - opencv and xcode https://medium.com/@jaskaranvirdi/setting-up-opencv-and-c-development-environment-in-xcode-b6027728003
    - someones disseratation https://core.ac.uk/download/pdf/210601816.pdf
    - from 90s but cool
        - DP correspondance search https://people.inf.ethz.ch/pomarc/pubs/VanMeerbergenIJCV.pdf
    - rectify uncallibrated https://docs.opencv.org/2.4/modules/calib3d/doc/camera_calibration_and_3d_reconstruction.html#stereorectifyuncalibrated
    - features are now free, supposedly
    - pathcmatch stereo http://www.bmva.org/bmvc/2011/proceedings/paper14/paper14.pdf
    - hash match https://openaccess.thecvf.com/content_ICCV_2017/papers/Fanello_Low_Compute_and_ICCV_2017_paper.pdf
    - triangulation https://perception.inrialpes.fr/Publications/1997/HS97/HartleySturm-cviu97.pdf
    - fast bilateral solver
    - original patch match https://gfx.cs.princeton.edu/pubs/Barnes_2009_PAR/patchmatch.pdf
    - suspicious dude with SOS https://github.com/meteorshowers/SOS
    - dataset https://github.com/ziizouz/middlebury-stereo-dataset
    - looks fun https://www.researchgate.net/publication/306544236_Holoportation_Virtual_3D_Teleportation_in_Real-time
    - tbb and openmp to parallelize and speed-up code

1. zsh improvements
    - hyper breaks in vim (cursor disappears)
    - fuzzy finder https://stackoverflow.com/a/21619292/9253292
    - completions
    - funcitons
    - k8s
    - zsh -g and -s aliases
    - zsh spelling correction
    - tmux
    - https://jdhao.github.io/2019/10/08/zsh_plugin_managers_compare/
    - https://project-awesome.org/unixorn/awesome-zsh-plugins#Tutorials
    - has a lot of stuff (will try later) [p10k](https://github.com/romkatv/powerlevel10k)
    - hmmm https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/fzf
    - THIS IS SLOW WITH GIT [spaceship prompt](https://github.com/denysdovhan/spaceship-prompt)
    - fancy diff https://github.com/zdharma/zsh-diff-so-fancy
    - also can try just [agnoster](https://github.com/agnoster/agnoster-zsh-theme)
        - https://github.com/zdharma/zinit/issues/75


1. iTerm2 and [Kitty](https://sw.kovidgoyal.net/kitty/)
    - and just for fun https://github.com/Swordfish90/cool-retro-term


1. macOs prefs:
    - First, make sure default shell is zsh: `chsh -s /bin/zsh`
    - alfred:
        - hide alfred icon in menubar
    - mission control: don't rearrange workspaces 
    - three finger drag: accessability.pointer control.trackpad options; disable tap-to-click. 
    - touchbar: replace siry with input-source
    - cutom safari keybindings
    - newer: 
        - https://github.com/webpro/awesome-dotfiles
        - https://github.com/driesvints/dotfiles
    - older:
        - https://macos-defaults.com/#🙋-what-s-a-defaults-command
        - https://github.com/benitolopez/dotfiles-macos/blob/master/.macos
        - https://www.intego.com/mac-security-blog/unlock-the-macos-docks-hidden-secrets-in-terminal/
        - https://about.gitlab.com/blog/2020/04/17/dotfiles-document-and-automate-your-macbook-setup/
        - https://macos-defaults.com/dock/mineffect.html#set-to-suck
        - todo
        - defaults read com.crystalidea.macsfancontrol

1. vscode setup
    - filter out extensions
    - automate install process
    - integrate with vim!
    - learn and use vim, ex
    - https://github.com/VSCodeVim/Vim/network/dependents?package_id=UGFja2FnZS0xMzYyNjc2Mg%3D%3D
    - tmux https://thoughtbot.com/blog/a-tmux-crash-course
    - https://mikebuss.com/2014/02/02/a-beautiful-productive-terminal-experience/

1. Look through brew file

1. and some DDD
    - https://www.infoq.com/articles/ddd-in-practice/
    - https://techblog.bozho.net/on-domain-driven-design-anemic-domain-models-code-generation-dependency-injection-and-more/

1. backup intellij IDEA (and isntall!)
1. install docker; what is whalebrew

1. fish vs zsh
1. ack instead of grep
1. check bat-extras and filter out when it's too much...
1. integrate neofetch funstuff

1. play with gitkraken, alfred. Backup their prefs.. 
    - maybe gitlens is good enough? https://github.com/eamodio/vscode-gitlens/issues/472

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
    - what is `osascript`
    - alfred setup:
        - cli for permissions: https://developer.apple.com/documentation/devicemanagement/privacypreferencespolicycontrol#properties
        - configure shortcuts:
            - https://apple.stackexchange.com/questions/398561/how-to-set-system-keyboard-shortcuts-via-command-line
            - http://hints.macworld.com/article.php?story=20131123074223584
            - https://ryanmo.co/2017/01/05/setting-keyboard-shortcuts-from-terminal-in-macos/
            - https://www.hammerspoon.org
            - Karabiner -- allow key remap and other funky keyboard tricks
    - create tachyon cask, or use tunnelbear instead
    - i like this for ios development https://github.com/rileytestut/AltStore
    - https://thoughtbot.com/blog
    - https://jdhao.github.io/2019/10/08/zsh_plugin_managers_compare/



## Restore Instructions

1. `xcode-select --install` (Command Line Tools are required for Git and Homebrew)
2. clone dotfiles repo to `~/.dotfiles`; `cd ~/.dotfiles`
5. Do one last Software Audit by editing [Brewfile](Brewfile) directly.
6. [`./install`](install)
7. Restart computer.
8. Setup up Dropbox (use multifactor authentication!) and allow files to sync before setting up dependent applications. Alfred settings are stored here. Mackup depends on this as well (and thus so do Terminal and VS Code).
9. Run `mackup restore`. Consider doing a `mackup restore --dry-run --verbose` first.
10. [Generate ssh key](https://help.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh), add to GitHub, and switch remotes




Most of bootstrapping is done by [Dotbot](https://github.com/anishathalye/dotbot).
It creates symlinks, folders, and runs scripts that I want.

@see [install.conf.yaml](./install.conf.yaml) to see what it's actually doing