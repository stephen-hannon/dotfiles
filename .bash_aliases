# Colors
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Improve common commands
alias rm="rm -Iv"
alias cp="cp -v"
alias mv="mv -v"
alias ln="ln -v"

# Shortcuts for common commands
alias ll="ls -l"
alias la="ls -A"

# Git shortcuts
alias g="git"
alias gs="git status"
alias gch="git checkout"
alias gcm="git commit"
alias gd="git diff"
alias gds="git diff --staged"
alias gda="git diff HEAD"
alias gf="git fetch"
alias gp="git push"
alias gr="git rebase"
alias grc="git rebase --continue"
alias gra="git rebase --abort"
alias gl="git log --graph --pretty=format:'%Cred%h%Creset %Cgreen(%cr) %C(bold blue)<%an>%Creset %C(yellow)%d%Creset %s' --abbrev-commit"
alias gg="git grep --context 1 --line-number --heading --break"

for i in 0 1 2 4 5 6 10 11 12 13; do
	alias st$i="ssh shannon3@student`printf %02d $i`.cse.nd.edu"
done

