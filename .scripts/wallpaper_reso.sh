#!/bin/zsh

# set background directory via arg (default = Circos)
if [[ $1 == "" ]]; then
	bgfldr="/home/zack/Pictures/Backgrounds/Circos"
else
	bgfldr="/home/zack/Pictures/Backgrounds/$1"
fi

# generate wal colorscheme
wal -b 000000 -n -i $bgfldr

# current image wallpaper
currentimg="${HOME}/.cache/wal/wal"

# get display dimensions and ratio
read RES_X RES_Y <<<$(xdpyinfo | awk -F'[ x]+' '/dimensions:/{print $3, $4}')

dpyratio=$(echo "scale=2; $RES_X/$RES_Y" | bc)

# get ratio of current wallpaper
read BG_X BG_Y <<<$(identify $(cat $currentimg) | awk -F'[ x+]' '{print $3, $4}')

ratlimit="0.5"
bgratio=$(echo "scale=2; $BG_X/$BG_Y" | bc)
limitlow=$(echo "scale=2; $dpyratio - $ratlimit" | bc)
limitupper=$(echo "scale=2; $dpyratio + $ratlimit" | bc)

tallimg=$(echo "$bgratio < 1" | bc)
squareimg=$(echo "$bgratio == 1" | bc)
scaleable=$(echo "$limitlow < $bgratio && $bgratio < $limitupper" | bc)

if (( $tallimg == 1 )) ||
	(( $squareimg == 1 )); then
	feh --bg-max "$(< "$currentimg")"
else
	if (( $scaleable == 1 )); then
		feh --bg-scale "$(< "$currentimg")"
	else
		feh --bg-max "$(< "$currentimg")"
	fi
fi
