#exec i3 --shmlog-size=26214400
#exec i3 -V >>~/.i3/i3log >&1
exec dbus-launch i3
copyq &
#exec gnome-session
xmodmap ~/.Xmodmap
xrdb ~/.Xresources
sh .config/polybar/launch.sh
#sh ./clarkst.sh

