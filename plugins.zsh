#!/bin/zsh
# JellyZSH plugins file

GIT_ROOT="https://github.com"
JZSH_PLUGINDIR="$JELLYZSHDIR/plugins"

function plugin-update {
	cd $JZSH_PLUGINDIR
	rm -rf *
	source "$JELLYZSHDIR/plugins.zsh"
}

# Simple plugin installer
function plugin {
	cd $JZSH_PLUGINDIR

	GIT_USER=$(cut -d'/' -f1 <<<"$1")
	GIT_REPO=$(cut -d'/' -f2 <<<"$1")

	if [ ! -d $JZSH_PLUGINDIR/$GIT_REPO ]; then;
		git clone "$GIT_ROOT/$GIT_USER/$GIT_REPO"
	fi

	if [ ! -z $2 ]; then;
		eval $2
	else
		source $JZSH_PLUGINDIR/$GIT_REPO/$GIT_REPO.zsh
	fi

	cd
} 

