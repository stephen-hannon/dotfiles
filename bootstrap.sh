#!/bin/bash

cd "$(dirname "${BASH_SOURCE}")"
DOTFILES_ROOT=$(pwd -P)

for dotfile in .bash_aliases .bashrc .tmux.conf .vimrc; do
	target="$DOTFILES_ROOT/$dotfile"
	link="$HOME/$dotfile"

	if [ -e $link ]; then
		current_target=$(readlink -f $link)

		# If the link exists and is properly formed, skip it
		if [ $current_target = $target ]; then
			echo Skipping $dotfile\; link already exists
			continue
		fi

		echo Backing up $link
		mv -i $link $link.bak
	fi

	echo "Linking $dotfile"
	ln -siv "$target" "$link"
done

