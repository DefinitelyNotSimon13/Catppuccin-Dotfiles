  <div align='center'>
  <h1>
    <div>
      <img src='https://github.com/DefinitelyNotSimon13/Catppuccin-Dotfiles/blob/main/assets/catppuccinCat.png'  alt='Catppuccin Logo' width=200>
    </div>
    <div>
      My <a href=https://github.com/catppuccin/catppuccin>Catppuccin<a> Dotfiles
    </div>
    <div>
      <img src='https://github.com/DefinitelyNotSimon13/Catppuccin-Dotfiles/blob/main/assets/catppuccinBar.png' alt='Catppuccin Bar' width=400>
    </div>
    <div>
      <img alt="GitHub Repo stars" src="https://img.shields.io/github/stars/DefinitelyNotSimon13/Catppuccin-Dotfiles?style=flat-square&label=STARS&labelColor=585b70&color=fab387">
      <img alt="GitHub Release" src="https://img.shields.io/github/v/release/DefinitelyNotSimon13/Catppuccin-Dotfiles?include_prereleases&display_name=tag&style=flat-square&label=RELEASES&labelColor=585b70&color=94e2d5">
      <img alt="GitHub issues" src="https://img.shields.io/github/issues/DefinitelyNotSimon13/Catppuccin-Dotfiles?style=flat-square&label=ISSUES&labelColor=585b70&color=f38ba8">
      <img alt="Static Badge" src="https://img.shields.io/badge/LICENSE-MIT-BLUE?style=flat-square&labelColor=585b70&color=89dceb">
    </div>
  </h1>
</div>

# DISCLAIMER 
## Work in Progress
Everything in this repository and it's submodules is still work in progress! They may contain any sorts of issues. If you encounter any, please feel free to open an issue!
## Scripts
The scripts do kind of work. I've changed tried to get them as functional as possible. They should now be able to install most things into a clean arch install (needed is only git).

The first version of some scripts has been added. These are all very experimental and might destroy things. I'll start properly testing them in the future, however until then, please look into the '.sh' files, before executing any scripts, to make sure they dont delete anything you dont want deleted!

> Clone the scriptsConf repository into ~/scripts and execute ~/scripts/install.sh.

## Furthermore
I only got into Linux in the past few weeks. It is very possible that things may be done incorrectly or improperly. 
If you find anything thats wrong or could/should be done differently please feel free to open an issue!

<hr>

# Inspiration
My first inspiration came from from [u/meow-64](https://www.reddit.com/user/meow-64)'s [post](https://www.reddit.com/r/unixporn/comments/ykt6z1/hyprland_catppuccin_with_hyprland) in r/unixporn.
Without his post, this repository would not exist. During the creation of my config I then took inspiration from the many repositorys part of the Catppuccin theme!

<hr>

# Modules
The repository consists of a few submodules:
- Main repository
  - .zsh config | *to be moved*
  - assets *like pictures and screenshots*
  - text files *like README or License*
-  **.[themes](https://github.com/DefinitelyNotSimon13/.themes/tree/main)** submodule *| to be cleaned up*
- .config
	- **[alacritty config](https://github.com/DefinitelyNotSimon13/alacrittyConf/tree/main)** submodule
	- **[dunst config](https://github.com/DefinitelyNotSimon13/dunstConf/tree/main)** submodule
	-  fontconfig *| can be removed?*
	- **[hypr config](https://github.com/DefinitelyNotSimon13/hyprlandConf/tree/main)** submodule
	- **[kitty config](https://github.com/DefinitelyNotSimon13/kittyConf/tree/main)** submodule
	- **[neofetch config](https://github.com/DefinitelyNotSimon13/neofetchConf/tree/main)** submodule
	- **[nvim config](https://github.com/DefinitelyNotSimon13/nvimConf/tree/main)** submodule
	- **[rofi config](https://github.com/DefinitelyNotSimon13/rofiConf/tree/main)** submodule
	- **[tmux config](https://github.com/DefinitelyNotSimon13/tmuxConf/tree/08832bee2da029622fadc62de72e83bd19ea6ee0)** submodule
	- **[waybar config](https://github.com/DefinitelyNotSimon13/waybarConf/tree/aaf33a147c2e2b016f076666b4a0042d97b0bb96)** submodule

 <hr>

# Configs not in the Repository (yet)
Some configurations I use are not yet part of this repository. Those include:
- Firefox
	- [Catppuccin for Firefox](https://github.com/catppuccin/firefox)
	- [Catppuccin Userstyles](https://github.com/catppuccin/userstyles)
- Grub
	- [Catppuccin for Grub](https://github.com/catppuccin/grub)
- SDDM
	- [Catppuccin for SDDM](https://github.com/catppuccin/sddm)

<hr>

# CREDIT
The main credit  goes to [u/meow-64](https://www.reddit.com/user/meow-64) for my inspiration and the [Catppuccin community](https://github.com/catppuccin/) for all their amazing work!

Credit for each config can be found within the ReadMe files of the submodules!

 **Zsh**
- romkatv's [powerlevel10k theme](https://github.com/romkatv/powerlevel10k)
- catppuccin's [zsh-syntax-highlitghting](https://github.com/catppuccin/zsh-syntax-highlighting)
- zsh-user's [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
- marlonrichert's [zsh-autocompletion ](https://github.com/marlonrichert/zsh-autocomplete)

If I missed any credit or you think someone deserves credit who isn't mentioned, please feel free to open an issue!

<hr>

# TODO
|Item	| Topic/Submodule  | Priority | Status|
|--|--|--|--|
|Add credit	| All	| 1 |WIP|
|Fix screenshots	|Rofi	|2 	|Done |
|	Add screenshots|Base	|2	|Done|
|Improve repositories	|All	|3	|WIP |
|Add scripts	|All	|4	| TBD |
|Rewrite Neovim config	|Neovim	|5	|TBD |
|Decide standart applications	|All	|3	|TBD |
|Add missing configs|New|2|TBD| 
|Improve Rofi config|Rofi|3|TBD|
|Improve Waybar config|Waybar|2|WIP|
|Change Wallpapers|Base|3|Done|
|Customize Neofetch|Neofetch|3|TBD|
|Setup Cliphist|Cliphist|3|WIP|
|Create keybind overview|All|4|TBD|
|Add screenshots to submodules|All|5|TBD
|MORE RICING|All|0|WIP|

<hr>

<p align="center"><img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/footers/gray0_ctp_on_line.svg?sanitize=true" /></p>

