#!/bin/sh
#solved by FabioLima
#
#NameScript:	colors.sh
#
#Author and Maintaining: Fabio Lima
#
#-----------------------------------
#Description:
#script to test colors in terminal, show all combination of colors
#
#-----------------------------------
#
#Example:
# ./colors.sh 
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

for letters in 0 1 2 3 4 5 6 7; do
	for light in '' ';1'; do
		for background	in 0 1 2 3 4 5 6 7; do
			seq="4$background;3$letters"
			echo -e "\033[$seq${light}m\c"
			echo -e " $seq${light:- } \c"
			echo -e "\033[m\c"
		done; echo
	done
done
