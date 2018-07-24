#exec i3 --shmlog-size=26214400
#exec i3 -V >>~/.i3/i3log >&1
exec feh --bg-scale ~/.config/wall.png
exec compton --config ~/.compton.conf -fb
exec ~/stuff/scripts/blurme &
exec sh $HOME/.config/polybar/launch.sh
copyq &
xmodmap ~/.Xmodmap
xrdb ~/.Xresources
exec sxhkd &
exec bspwm
