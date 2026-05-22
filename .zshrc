# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

source $ZSH/oh-my-zsh.sh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# ---- basic ----
autoload -Uz compinit
compinit

setopt auto_menu
setopt complete_in_word

zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors ''

# ---- aliases ----
alias ls="eza --icons --group-directories-first --color=always"
export EZA_COLORS="di=38;5;75:fi=38;5;252:ex=38;5;114:ln=38;5;81"

alias dcu="docker compose up"
alias dcb="docker compose up -d --build"
alias dcd="docker compose down"
alias dcl="docker compose logs -f"
alias dcs="docker compose stop"
#---N config(cd ersatz)----
eval "$(zoxide init zsh)"

# opencode
export PATH=/home/kimuj/.opencode/bin:$PATH
