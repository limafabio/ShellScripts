#!/bin/sh
#solved by FabioLima
#
#NameScript: sound.sh
#
#Author and Maintaining: Fabio Lima
#
#-----------------------------------
#Description:
#
#script to test sound 
#
#-----------------------------------
#
#Example:
# ./sound.sh
#
#To stop must press Ctr+C
#-----------------------------------
#
#History
#
#v1.0 2016/09/09, FabioLima
#
#-----------------------------------
#
#License: GPL
#
	
Debug(){
	[ $1 -le $DEBUG ] && echo "--- DEBUG $*" 
}

echo -e '\033[10;750]\033[11;100]'

freq=0
while :; do
	freq=$((freq+1))
	echo -e "\033[10;$freq]"
	echo -e "frequence=$freq"
	echo -e '\a'
	sleep 10
done
