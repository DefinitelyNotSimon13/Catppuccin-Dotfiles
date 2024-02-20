if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/.zsh/catppuccin_mocha-zsh-syntax-highlighting.zsh


export ZSH="$HOME/.oh-my-zsh"
export EDITOR=nvim

export PATH="$HOME/.config/tmux/plugins/tmuxifier/bin:$PATH"

eval "$(tmuxifier init -)"

ZSH_THEME="powerlevel10k/powerlevel10k"

ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"

HIST_STAMPS="mm.dd.yyyy"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting wakatime)

export QT_QPA_PLATFORMTHEME="qt6ct"

source $ZSH/oh-my-zsh.sh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
tmux-window-name() {
	($TMUX_PLUGIN_MANAGER_PATH/tmux-window-name/scripts/rename_session_windows.py &)
}


# Created by `pipx` on 2024-02-02 15:03:29
export PATH="$PATH:/home/simon/.local/bin"
eval "$(zoxide init --cmd cd zsh)"

alias vim=nvim
alias vi=nvim
alias t=tmux
alias te="tmux kill-session && exit"
alias ls=exa
alias ll="exa --long"
alias tree="exa --tree"
alias la="exa --all"
alias lla="exa --long --all"
alias cat=bat
alias zz="cd -"
alias lg="lazygit"

eval $(thefuck --alias)

path+=("$HOME/.scripts/bin")
