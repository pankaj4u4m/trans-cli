#!/bin/sh
eval $(xdotool getmouselocation --shell --prefix=START_)

WORD="trans de:en '$(wl-paste --primary)'"
xterm -fa 'Monospace' -fs 10  +sb -geometry 60x20+$START_X+$START_Y -T "$WORD" -e "$WORD && window.sh $START_X $START_Y"
