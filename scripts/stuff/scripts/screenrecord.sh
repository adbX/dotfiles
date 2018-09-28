#!/bin/sh
#https://trac.ffmpeg.org/wiki/Capture/Desktop
FILENAME="$(date +%l_%M_%S__%a_%b_%d_%g).mp4"
FILENAME="$(echo -e "${FILENAME}" | sed -e 's/^[[:space:]]*//')"
echo $FILENAME

function record(){
	    #notify-send "Screen recording: $FR $XYPOS $SCREENSIZE"
		ffmpeg \
				-video_size $SCREENSIZE \
				-f x11grab \
				-framerate $FR \
				-i $XYPOS \
				~/stuff/record/$FILENAME
	    #notify-send "Saved screenrecord"
}

while getopts "p:f:n:" opt; do
		case ${opt} in
				p) XYPOS=$OPTARG
						;;
				f) FR=$OPTARG
						;;
				n) name=$OPTARG
						if [ $name = "default" ]; then
								XYPOS=":0+0,0"
								SCREENSIZE="1920x1080"
						elif [ $name = "clark" ]; then
								XYPOS=":0+1920,0"
								SCREENSIZE="2560x1440"
						else
								echo "no more profiles yet lol"
						fi
						;;
		esac
done

record FR SCREENSIZE XYPOS
