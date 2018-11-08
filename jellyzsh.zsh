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

# Add JZSH bin directory to path
PATH="$PATH:$JELLYZSHDIR/bin"
