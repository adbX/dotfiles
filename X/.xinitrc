copyq &
xmodmap ~/.Xmodmap
xrdb ~/.Xresources
exec feh --bg-scale ~/.config/wall.png
exec sh $HOME/.config/polybar/launch.sh
exec compton --config ~/.compton.conf -fb
exec ~/stuff/scripts/blurme &
exec sxhkd &
exec bspwm
