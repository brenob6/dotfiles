export ZSH="$HOME/.oh-my-zsh"
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#83a598,italic"
export ZSH_AUTOSUGGEST_STRATEGY=(history)

export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:/usr/local/bin

export OS="linux"

HYPHEN_INSENSITIVE="true"

ZSH_THEME="robbyrussell"

plugins=(
	git
	colored-man-pages
	git-prompt
	asdf
	zsh-autosuggestions
	extract
	zsh-syntax-highlighting
)

alias vi="nvim"
alias vimrc="cd ~/.config/nvim"
alias wo="cd ~/workspace"
alias sv="source venv/bin/activate"

alias idf="idf.py"
alias get_idf='. $HOME/workspace/esp/esp-idf/export.sh'

source $ZSH/oh-my-zsh.sh
