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
#	Support to options -h,-V and missing parameters
#-----------------------------------
#
#Example:
# $ ./users.sh
#
#-----------------------------------
#
#History
#
# Version 4.0 2016/09/08, FabioLima
#
#-----------------------------------
#
#License: GPL
#

MESSAGE_USE="
Use: $(basename "$0") [-h | -V]
	-h,--help		Show the windown and close
	-V, --version		Show the version and close
"

# options command line
case "$1" in
	-h | --help)
		echo "$MESSAGE_USE"
		exit 0
	;;

	-V | --version)
		echo -n $(basename "$0")
		grep '^# Version' "$0" | cut -d . -f 1 | tr -d \#
		exit 0
	;;

	*)
		if test -n "$1"
		then
			echo Invalid Option: $1
			exit 1	
		fi
	;;

esac

#process
cut -d : -f 1,5 /etc/passwd | tr : \\t
