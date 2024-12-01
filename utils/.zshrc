# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Theme
ZSH_THEME="half-life"

# Plugins
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Aliases
alias qq="exit"
alias c="clear"
alias src="exec zsh"
alias ft="fastfetch"
alias ht="htop"
alias icat="kitten icat"
alias sen="watch sensors"
alias ls="eza --icons"
alias tree="eza --icons --tree"
