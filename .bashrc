if [ -f ~/.bashrc.default ]; then
	. ~/.bashrc.default
fi

if [ -f /etc/bash_completion.d/git-prompt ]; then
	. /etc/bash_completion.d/git-prompt
fi

