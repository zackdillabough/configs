#!/bin/zsh

bgpath="home/zack/Pictures/Backgrounds/"

if [[ $1 == "" ]]; then
	bgfldr="/home/zack/Pictures/Backgrounds/Circos"
else
	bgfldr="/home/zack/Pictures/Backgrounds/$1"
fi

# fin wallpaper var append to bg path

wal -b 000000 -n -i $bgfldr
#wal -b 000000 -i $bgfldr
#source /home/zack/.cache/wal/colors.sh

if [[ $1 == 'Space' ]]; then
	feh --bg-scale "$(< "${HOME}/.cache/wal/wal")"
else
	feh --bg-center "$(< "${HOME}/.cache/wal/wal")"
fi

