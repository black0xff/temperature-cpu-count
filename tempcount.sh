#!/bin/bash
while true :
	do temp=$(cat /sys/class/thermal/thermal_zone1/temp)
	temp_fix=${temp%%000}
	red="\e[31m"
	green="\e[32m"
	if [[ $temp_fix < 80 ]];then

		echo -e $green$temp_fix
		sleep 2.2
	else
		echo -e $red$temp_fix
		sleep 2.2
	fi

	done
