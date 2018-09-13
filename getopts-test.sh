#!/bin/sh - 
#
#Namescript:getopts-test.sh
#
#Author and maintaing: Fabio Lima
#
#------------------------------------- 
#Description: 
#
# script to understand command Getopts
# 
#-------------------------------------
#Example: ./getopts-test.sh 
#
#-------------------------------------
#History
#v1 0 2018/09/13, Fabio Lima
#
#-------------------------------------
#
#License: GPL
#

while getopts ":sa:" opt
do 
	case $opt in
		s) echo "OK Simple option (-s)";;
		a) echo "Ok Option whit arguments (-a), receive: $OPTARG";;
	       \?) echo "ERROR Invalid Option: $OPTARG";;
	        :) echo "ERROR Missing argument to : $OPTARG";;
	esac
done

echo
shift $((OPTIND - 1))
echo "INDEX: $OPTIND"
echo "REST: $*"
echo
