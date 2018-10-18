export ZSH=$HOME/.oh-my-zsh
# Vars

# Alias

# Theme
ZSH_THEME="agnoster"

# Settings
export PLUGINS=$HOME/Dotfiles/zsh/plugins

PATH="$HOME/.local/bin:$PATH"


#Funcoes

# CD com ls
c(){
	cd $1;
	ls;
}
alias cd="c"

# Ultimo diretorio apenas 
# (porra, usa pwd pra mostrar tudo, n precisa sempre)

prompt_dir() {
	prompt_segment blue black "${PWD##*/}"
}
# Plugins

plugins=(
git
vi-mode
)

source $ZSH/oh-my-zsh.sh

source $PLUGINS/zsh-autosuggestions/zsh-autosuggestions.zsh
source $PLUGINS/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

