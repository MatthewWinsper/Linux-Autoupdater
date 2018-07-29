#! /bin/bash

#Simple BASH script to update Kali/Linux Distros to newest versions quickly and effectively
#I got bored of doing it basically, and I need to know BASH scripting for University
#Created by M. Winsper, Twitter @MatthewWinsper

#Set formatting, it looked boring otherwise
g=$'\e[1;32m'
b=$'\e[1;97m'


#Displays some system info as a header
function Sysinfo {
	clear
	echo $b"You are using terminal as `whoami`."
	echo $b"Current system version: `uname -r`"
	echo ""
}

#Contains the full update command script.
function Update {
	echo $g"Updating Kali from repositories within Sources.list..." && sleep 1
	apt-get update -y
	echo $g"Upgrading package lists..." && sleep 1
	apt-get upgrade -y
	echo $g"Upgrading current Kali distro..." && sleep 1
	apt-get dist-upgrade -y
	echo $g"Cleaning up..." && sleep 1
	apt-get autoremove && apt-get autoclean -y 
	echo $g"Complete."
}

Sysinfo
Update

exit 0
