#!/bin/bash

declare -i width=1024
declare -i height=600
declare primary
declare display

function get_primary_port {
	xrandr | egrep 'connected|primary' | awk '{print $1;}' | head -1
}

function get_display_port {
	xrandr | grep "disconnected" | awk '{print $1;}' | head -1
}

function extend {
	printf "=%.0s" $(seq 0 75)
	printf "\nExtending display to Android device\n"
	printf "=%.0s" $(seq 0 75)
	printf "\n\n"

	primary=$(get_primary_port)
	echo "Primary display port: $primary"

	display=$(get_display_port)

	if [ -z "$display" ];
	then
		echo "No unused display ports with status [disconnected] found!"
		echo "Exiting..."
		exit 1
	fi

	echo "Found unused display port: $display"
	echo "Creating Modeline..."
	echo $(gtf $width $height 60 | sed '3q;d' | sed 's/Modeline//g')

	gtf $width $height 60 | sed '3q;d' | sed 's/Modeline//g' | xargs xrandr --newmode 2> /dev/null
	
	echo "Adding mode to display port: $display"
	mode=$(gtf $width $height 60 | sed '3q;d' | sed 's/Modeline//g' | awk '{print $1;}' | sed 's/^.\(.*\).$/\1/')
	echo $mode
	xrandr --addmode $display $mode
	
	echo "Extending $display left of $primary"
	xrandr --output $display --mode $mode --left-of $primary
}

function server {
	printf "=%.0s" $(seq 0 75)
	printf "\nConnect to VNC Server at IP: $(hostname -I)Port: 5900\n"
	printf "=%.0s" $(seq 0 75)
	printf "\n\n"
	
	x11vnc -clip ${width}x${height}+0+0 &> /dev/null

}

function remove {
	printf "=%.0s" $(seq 0 75)
	printf "\nDisconnecting extended display: $1\n"
	printf "=%.0s" $(seq 0 75)
	printf "\n\n"

	xrandr --output $1 --off
}

if [ "$1" == "extend" ];
then
	extend
elif [ "$1" == "server" ];
then
	server
elif [ "$1" == "remove" -a -n "$2" ];
then
	remove $2
else
	echo "Missing argument: [extend | remove <port> | server]"
fi
