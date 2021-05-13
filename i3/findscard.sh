card=0

amixer -c 1 get Master && card=1

sed '$d' ~/.conig/i3/config
echo set \$cardno $card >> ~/.config/i3/config