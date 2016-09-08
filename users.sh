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
#	Support to options -h,-V,-s and missing parameters
#-----------------------------------
#
#Example:
# $ ./users.sh
#
#-----------------------------------
#
#History
#
# Version 5.0 2016/09/08, FabioLima
#
#-----------------------------------
#
#License: GPL
#

MESSAGE_USE="
Use: $(basename "$0") [-h | -V]
	-s,--sort		Sort in alphabetic order the users list 
	-h,--help		Show the windown and close
	-V, --version		Show the version and close
"

order=0

# options command line
case "$1" in

	-s | --sort)
			order=1
	;;

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

#extract list
list=$(cut -d : -f 1,5 /etc/passwd)

#order list
if test "$order" = 1
then
	list=$(echo "$list" | sort)
fi

#show the results
echo "$list" | tr : \\t
