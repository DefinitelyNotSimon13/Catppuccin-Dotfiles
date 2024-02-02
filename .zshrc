neofetch
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/.zsh/catppuccin_mocha-zsh-syntax-highlighting.zsh

alias vim=nvim
alias vi=nvim

export ZSH="$HOME/.oh-my-zsh"
export EDITOR=nvim

export PATH="$HOME/.config/tmux/plugins/tmuxifier/bin:$PATH"

eval "$(tmuxifier init -)"

ZSH_THEME="powerlevel10k/powerlevel10k"

ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"

HIST_STAMPS="mm.dd.yyyy"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting wakatime)

source $ZSH/oh-my-zsh.sh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
tmux-window-name() {
	($TMUX_PLUGIN_MANAGER_PATH/tmux-window-name/scripts/rename_session_windows.py &)
}

