#!/bin/zsh
# JellyZSH Main script
# Modify at your own risk

# Config
export JELLYZSHDIR="$HOME/.config/JellyZSH"

## INIT

# Load other config files
source $JELLYZSHDIR/aliases.zsh
source $JELLYZSHDIR/plugins.zsh

# Attempt to set the theme
if [ -f "$JELLYZSHDIR/themes/$JZSH_THEME.jzsh_theme" ]; then
	source $JELLYZSHDIR/themes/$JZSH_THEME.jzsh_theme
else
	source $JELLYZSHDIR/themes/default.jzsh_theme
fi

command_not_found_handler () {
	echo "\e[31mError: \[0mCommand not found!"
	return 127
}
