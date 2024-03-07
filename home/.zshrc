export ZSH="$HOME/.oh-my-zsh"
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#83a598,italic"
export ZSH_AUTOSUGGEST_STRATEGY=(history)

export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:/usr/local/bin

ZSH_THEME="murilasso"
zle_highlight=('paste:none')

HYPHEN_INSENSITIVE="true"

plugins=(
	git
	colored-man-pages
	git-prompt
	asdf
	zsh-autosuggestions
	extract
	vi-mode
)

alias vi="nvim"
alias vimrc="cd ~/.config/nvim"
alias sv="source venv/bin/activate"

source $ZSH/oh-my-zsh.sh
