#!/bin/sh
  
if bspc query -N -n focused.tiled; then
    bspc node -g sticky
else
    bspc node -g private
fi
