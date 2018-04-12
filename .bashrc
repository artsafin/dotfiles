#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

EDITOR="$HOME/bin/micro"

[[ -f /usr/share/bash-completion/bash_completion ]] && source /usr/share/bash-completion/bash_completion

for f in ~/.bash_completion.d/*; do
    source $f
done

for f in ~/.bashrc.d/*; do
    [[ -f $f ]] && source $f
done

DOTFILES_ENV=$(cat ~/.dotfiles_env 2>/dev/null)
if [[ -n $DOTFILES_ENV ]]; then
	for f in ~/.bashrc.d/${DOTFILES_ENV}/*; do
	    [[ -f $f ]] && source $f
	done	
fi

export HISTCONTROL=ignoreboth

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
