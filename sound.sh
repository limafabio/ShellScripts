#!/usr/bin
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

echo -ne "\033[11;900]"
while :
do
	echo -ne "\033[10;500]\a" ; sleep 1
	echo -ne "\033[10;400]\a" ; sleep 1
done
