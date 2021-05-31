# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# PROMPT (PS1)

# Colors
Reset='\e[0m'

Black='\e[0;30m'
Red='\e[0;31m'
Green='\e[0;32m'
Yellow='\e[0;33m'
Blue='\e[0;34m'
Purple='\e[0;35m'
Cyan='\e[0;36m'
White='\e[0;37m'

IBlack='\e[0;90m'
IRed='\e[0;91m'
IGreen='\e[0;92m'
IYellow='\e[0;93m'
IBlue='\e[0;94m'
IPurple='\e[0;95m'
ICyan='\e[0;96m'
IWhite='\e[0;97m'

GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1

PS1="${IRed}\u${Reset}@${Cyan}\h${Reset}:${ICyan}\w${Reset}"
PS1='${debian_chroot:+($debian_chroot)}'"$PS1"' $(__git_ps1 "(%s)")\n\$ '

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# Enviroment variables
export EDITOR=vim
export VISUAL=vim

export PATH=~/.npm-global/bin:$PATH

# Source other files
for file in\
	~/.bash_aliases\
	~/.git-prompt.sh\
	/etc/bash_completion\
	/etc/bash_completion.d/git-prompt\
	/etc/bash_completion.d/git
	/usr/share/git/completion/git-completion.bash\
	/usr/share/git/git-prompt.sh
do
	if [ -f $file ]; then
		. $file
	fi
done

