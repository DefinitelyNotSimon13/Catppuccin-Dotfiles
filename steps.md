essentially just a documentation of how I setup my desktop
wanna use it to create a propper install script  at some point

trying to go from bottom up
    so like, after the basic stuff, start with boot (grub), them sdd,, etc...


1. install (used archinstall with minimal this time - on latptop manual arch install)
    2. archinstall doesnt set zsh as login shell it seems, so that has to be done
    3. install zsh sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
2. install packages from packages.md
3. setup grup --> setup done by archinstall - weird? at least different then manual
    1. is installed
    2. downloaded and added catppuccin theme (add link to repo here)
    3. added os prober
    4. makeconfig
    5. run 'bcdedit /set "{bootmgr}" path \boot\EFI\arch\grubx64.efi' to put grub above windows boot mgr
4. setup sddm
    1. sudo systemctl enable sddm.service
    2. clone catppuccin sddm theme (add link to repo here)
    3. move mocha theme to sddm themes 
5. install/download themes, cursor, icons
    1. catpuccin-gtk theme and cursot already installed in packages/yay
    2. papirus icon theme as well (currently thinking about paper as an alternative, so that was installed as well)
5. git-credential-manager configure
6. git config --global credential.credentialStore cache
7. pull(copy) the repo
    - had some problems here
    - tmux and zsh config not loaded
    - cloned and forced etc...
8
    ttf-dejavu
    nwg-look
    dconf-editor. fixing tmux
    1. installing tpm
    2. install plugins using tpm
    3. add python depencies for tmux window name plugin
9. fixing zsh
    1. install powerlevel10k zsh
    2. make sure .zshrc is correctly pulled - it wasnt for me
    3. powerlevel10k has to be installed like this:
        1. clone the repo to .oh-my-zsh/themes
    -- I feel like this can be done better
    4. install zsh autosuggestions and zsh-syntax-hightliting for oh my zsh
10. whilst trying to sign into github i encountered an issue "No deault font set"
    1. trying to fix by add fontconfig/fonts.conf to the repo
    2. doesnt work
    3. FUCKING HELL - turns out for some fucked up reason I needed to install tts-dejavu | has been added to packages
11. set monitors
    1. fix for hyprland
    2. fix for sddm - not done  
12. fix waybar
    1. Problem with external display
    2. ddc/ci   
    3. ddci-driver-linux-dkms solves it
    Note: Installing the linux-headers helps prevent an hour of frustration
13. set wallpapers with hyprpaper
14. try to get my goxlr working
    nice got it working
15. change waybar 


cursor isnt correct -sometimes
no cpu temp and usage
rofi is broken rn
sound isnt showing
battery on desktop not showing makes sense
popups no background - not setup specific

TODO
    add aliases nvim
    install themes for gtk
        catppuccin theme
        catppuccin cursor
        papirus-dark icons

!TODO
    add linkm to catppuccin repo
