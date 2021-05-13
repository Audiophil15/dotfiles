#!/bin/bash

# Before switching to kernel 5.11, keep it just in case
# cardno=0
# amixer -c 1 get Master && cardno=1

#if amixer -c $cardno get Master | grep -Fq "[off]"; then volnoti-show -m; else  volnoti-show $(amixer -c $cardno get Master | grep -Po "[0-9]+(?=%)");fi

# After switching to kernel 5.11

if amixer get Master | grep -Fq "[off]"; then volnoti-show -m; else  volnoti-show $(amixer sget Master | grep -Po "[0-9]+(?=%)" | head -n 1);fi