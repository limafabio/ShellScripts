#!/usr/bin
#solved by FabioLima
#
#NameScript:	users.sh
#
#Author and Maintaining: Fabio Lima
#
#-----------------------------------
#Description:
# Show logins and names of the user from system
# Get information from /etc/passwd
#	Support to option -h
#-----------------------------------
#
#Example:
# $ ./users.sh
#
#-----------------------------------
#
#History
#
#v2.0 2016/09/08, FabioLima
#
#-----------------------------------
#
#License: GPL
#

MESSAGE_USE="
Use: $0 [-h]
	-h Show the windown and close
"

# options command line
if test "$1" = "-h"
then
	echo "$MESSAGE_USE"
	exit 0
fi

#process
cut -d : -f 1,5 /etc/passwd | tr : \\t
