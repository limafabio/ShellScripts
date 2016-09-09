#!/usr/bin
#solved by FabioLima
#
#NameScript:	barprogress.sh
#
#Author and Maintaining: Fabio Lima
#
#-----------------------------------
#Description:
# just script to show progress bar until 100%
#
#-----------------------------------
#
#Example:
# ./barprogess.sh
#
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

#empty bar
echo -n '[.................................................]  0%'

step='#####'
for i in 10 20 30 40 50 60 70 80 90 100; do
	sleep 1
	pos=$((i/2-5))
	echo -ne '\033[G'
	echo -ne "\033[${pos}C"
	echo -n  "$step"
	echo -ne '\033[53G'
	echo -n "$i"
done
echo '%'
