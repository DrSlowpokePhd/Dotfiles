#!/bin/sh

if [[ $COLOR_SCHEME == "dark" ]]; then 
    kitty @ set-colors -a ~/.config/kitty/gruvbox-light.col \ 
    export COLOR_SCHEME="light"  
elif [[ $COLOR_SCHEME == "light" ]]; then 
    kitty @ set-colors -a ~/.config/kitty/gruvbox-dark.col \
    export COLOR_SCHEME="dark"  
fi
