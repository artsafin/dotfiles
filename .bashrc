#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# >>> Added by cnchi installer
BROWSER=/usr/bin/chromium
EDITOR=/usr/bin/nano

source /usr/share/bash-completion/bash_completion

for f in ~/.bash_completion.d/*; do
    source $f
done
for f in ~/.bashrc.d/*; do
    source $f
done

PATH="~/bin:${PATH}"

# PAGER_FLAGS="-e -X -P\"-- less ?pB(%pB\\%):--. (f)orward, (b)ack, (q)uit$\""

export HISTCONTROL=ignoreboth
