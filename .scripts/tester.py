import os, sys

e_dim = os.system('xdpyinfo | grep -oP \'dimensions:\s+\K\S+\'')
bg_path = sys.argv[1]
os.system('wal -b 000000 -n -i \"$1\"')
if bg_path is '/home/zack/Pictures/Backgrounds/Space':
    opt = 'scale'
else:
    opt = 'center'
os.system('feh --bg-%s \"$(< \"${HOME}/.cache/wal/wal\")')


