#!/bin/sh
#solved by FabioLima
#
#NameScript:	feed.sh
#
#Author and Maintaining: Fabio Lima
#
#-----------------------------------
#Description:
#
#
#-----------------------------------
#
#Example:
#
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

URL="http://br-linux.org/feed/?q=node/feed"

lynx -source  "$URL" |
	grep '<title><\!\[CDATA\[' |
	sed '
			s/<title><!\[CDATA\[//g' |
	sed '
			s/\]\]><\/title>//g' |
	head -n 10
	
