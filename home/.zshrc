export ZSH="$HOME/.oh-my-zsh"


export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#83a598,italic"
export ZSH_AUTOSUGGEST_STRATEGY=(history)

export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:$IDF_PATH/tools

# besu
export PATH=$PATH:$HOME/besu-25.6.0/bin

export OS="linux"

HYPHEN_INSENSITIVE="true"

ZSH_THEME="robbyrussell"

plugins=(
	git
	colored-man-pages
	git-prompt
	extract
)

## asdf
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"
# append completions to fpath
fpath=(${ASDF_DATA_DIR:-$HOME/.asdf}/completions $fpath)
# initialise completions with ZSH's compinit
autoload -Uz compinit && compinit

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
