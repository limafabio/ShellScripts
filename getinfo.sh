#!/usr/bin
#solved by FabioLima
#
#NameScript:	getinfo.sh
#
#Author and Maintaining: Fabio Lima
#
#-----------------------------------
#Description:
#Script to get information from the web site brlinux.org
#it's necessary install lynx
#-----------------------------------
#
#Example:
# ./getinfo.sh
#
#-----------------------------------
#
#History
#
#v1.0 2016/09/10, FabioLima
#
#-----------------------------------
#
#License: GPL
#
	
Debug(){
	[ $1 -le $DEBUG ] && echo "--- DEBUG $*" 
}


URL="http://br-linux.org"

hash lynx 2>/dev/null || { 
	echo >&2 "It's require lynx but it's not installed. Aborting."; exit 1;
}

lynx -source "$URL" |
	grep '^<div class=userpostbody>' |
  sed '
			s/<[^>]*>//g' |
	head -n 10


