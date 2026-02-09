#!/bin/sh

if bspc query -N -n focused.tiled; then
    bspc node -g private
else
    bspc node -g sticky
fi
