#!/bin/sh
  
if bspc query -N -n focused.tiled; then
    bspc node -t floating
else
    bspc node -t tiled
fi
