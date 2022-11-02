#!/bin/bash

# Before switching to kernel 5.11, keep it just in case
# cardno=0
# amixer -c 1 get Master && cardno=1

# vol=$(amixer -c $cardno sget Master | grep -Po "[0-9]+(?=%)" | cut -d " " -f1)%

# After switching to kernel 5.11
vol=$(amixer sget Master | grep -Po "[0-9]+(?=%)" | head -n 1)

volnoti-show $vol