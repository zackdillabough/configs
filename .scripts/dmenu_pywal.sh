# reference from ~/.cache/wal/colors-rofi-dark.rasi
example='
* {
    active-background: #51524D; #$color2
    active-foreground: @foreground;
    normal-background: @background;
    normal-foreground: @foreground;
    urgent-background: #3B4347; #$color9
    urgent-foreground: @foreground;

    alternate-active-background: @background;
    alternate-active-foreground: @foreground;
    alternate-normal-background: @background;
    alternate-normal-foreground: @foreground;
    alternate-urgent-background: @background;
    alternate-urgent-foreground: @foreground;

    selected-active-background: #3B4347;
    selected-active-foreground: @foreground;
    selected-normal-background: #51524D;
    selected-normal-foreground: @foreground;
    selected-urgent-background: #6C5B43;
    selected-urgent-foreground: @foreground;

    background-color: @background;
    background: #000000;
    foreground: #c1b5a7;
    border-color: @background;
    spacing: 2;
}
'

source ~/.cache/wal/colors.sh

echo $color7
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
