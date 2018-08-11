import os

os.system('wal -b 000000 -n -i \"$1\"')
if [ "$1" = "/home/zack/Pictures/Backgrounds/Space" ]
if
then
	feh --bg-scale "$(< "${HOME}/.cache/wal/wal")"
else
	feh --bg-center "$(< "${HOME}/.cache/wal/wal")"
fi

