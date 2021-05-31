# custom stuff for my .zshrc

ALIASESFILE="$HOME/.dotfiles/.aliases"
LOCALBINDIR="$HOME/.local/bin"

# Rust binaries installed via cargo
CARGODIR="$HOME/.cargo/bin"

# I'm using this directory as my shell scripting playground while I learn how
# to better write bash scripts. This probably won't exist, and is probably
# serves the same function as $LOCALBINDIR
SHELLSCRIPDIR="$HOME/shell-scripting"

# This might be in a different location, but this is how I have them on 
# my current machine
COWFILEDIR="$HOME/.dotfiles/.cowfiles/cowsay-files/cows"

# source my aliases
if [[ -e "$ALIASESFILE" && -f "$ALIASESFILE" ]]; then
	source "$ALIASESFILE"
fi

# add ~/.local/bin to the path
if [[ -e "$LOCALBINDIR" && -d "$LOCALBINDIR" ]]; then
	PATH="$PATH:$LOCALBINDIR"
fi

# add ~/shell-scripting to the path 
if [[ -e "$SHELLSCRIPDIR" && -d "$SHELLSCRIPDIR" ]]; then
	PATH="$PATH:$SHELLSCRIPDIR"
fi

# add ~/.cargo/bin for cargo binaries
if [[ -e "$CARGODIR" && -d "$CARGODIR" ]]; then
	PATH="$PATH:$CARGODIR"
fi

# add the cowfiles
if [[ -e "$COWFILEDIR" && -d "$COWFILEDIR" ]]; then
	COWPATH="$COWPATH:$COWFILEDIR"
fi


# some color man pages
export LESS_TERMCAP_mb=$'\E[01;32m'
export LESS_TERMCAP_md=$'\E[01;32m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;47;34m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;36m'
export LESS=-r

