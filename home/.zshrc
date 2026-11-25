export ZSH="$HOME/.oh-my-zsh"


export ZSH_AUTOSUGGEST_STRATEGY=(history)


# besu
export PATH=$PATH:$HOME/besu-25.6.0/bin

export OS="linux"

HYPHEN_INSENSITIVE="true"

ZSH_THEME="robbyrussell"

plugins=(
	git
	colored-man-pages
	extract
)

## asdf
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"
# append completions to fpath (compinit is run by oh-my-zsh)
fpath=(${ASDF_DATA_DIR:-$HOME/.asdf}/completions $fpath)

alias vi="nvim"
alias vimrc="cd ~/.config/nvim"
alias wo="cd ~/workspace"
alias sv="source venv/bin/activate"

alias idf="idf.py"
alias get_idf='. $HOME/esp/esp-idf/export.sh'

source $ZSH/oh-my-zsh.sh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh


# Added by Antigravity CLI installer
export PATH="$HOME/.local/bin:$PATH"
