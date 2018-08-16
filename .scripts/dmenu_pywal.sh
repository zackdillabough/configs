#!/bin/zsh

wal -b 000000 -n -i $wallpaper

source ~/.cache/wal/colors.sh

rm ~/.config/rofi/dmenu_pywal.rasi

echo "* {
    background-color:      $background;
    border-color:          White;
    text-color:           $color7;
    font:            \"Times New Roman 12\";
}

configuration {
}

#window {
    anchor:     north;
    location:   north;
    width:      100%;
    padding:    4px;
    children:   [ horibox ];
}

#horibox {
    orientation: horizontal;
    children:   [ prompt, entry, listview ];
}

#listview {
    layout:     horizontal;
    spacing:    5px;
    lines:      100;
}

#entry {
    expand:     false;
    width:      10em;
}

#element {
    padding: 0px 2px;
}
#element selected {
    background-color: $foreground;
	text-color: black;
}" > ~/.config/rofi/dmenu_pywal.rasi
