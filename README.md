## Setup

```bash
git clone --bare https://github.com/stephen-hannon/dotfiles.git $HOME/.dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles config --local status.showUntrackedFiles no
dotfiles checkout
```

If any of the files exist, you'll get an error when trying to `checkout`. Delete or move them and retry.
