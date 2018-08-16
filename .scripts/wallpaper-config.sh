#!/bin/zsh
# this script takes in a bg-dir name and generates a custom colorscheme + sets the current 'wal' image as the display bg (with directory-specific settings)

if [[ $1 == "" ]]; then
	bgfldr="/home/zack/Pictures/Backgrounds/Circos"
else
	bgfldr="/home/zack/Pictures/Backgrounds/$1"
fi

wal -b 000000 -n -i $bgfldr

for category in 'Space' 'SpaceTravel'; do
if [[ $1 == "$category" ]]; then	
	feh --bg-scale "$(< "${HOME}/.cache/wal/wal")"
	break
else
	feh --bg-center "$(< "${HOME}/.cache/wal/wal")"
fi
done
