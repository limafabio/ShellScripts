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
#	Support to options -h,-V,-s,-r,-u and missing parameters
#-----------------------------------
#
#Example:
# $ ./users.sh
#
#-----------------------------------
#
#History
#
# Version 7.0 2016/09/08, FabioLima
#
#-----------------------------------
#
#License: GPL
#

order=0
inverter=0
uppercase=0
delimt='\t'

MESSAGE_USE="
Use: $(basename "$0") [-h | -V]
	-d, --delimiter		Use character C with delimiter
	-r, --revert		Invert the list of user
	-s,--sort		Sort in alphabetic order the users list 
	-u, --uppercase		Show the list in uppercase
	-h,--help		Show the windown and close
	-V, --version		Show the version and close
"

# options command line
while test -n "$1"
do
	case "$1" in
		-d | --delimiter)
				shift
				delim="$1"

				if test -z "$delim"
				then
					echo "Missing argument to -d"
					exit 1
				fi
		;;

		-s | --sort) order=1 ;;

		-r | --reverse) inverter=1 ;;

		-u | --uppercase) uppercase=1 ;;

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
				echo Invalid Option: $1
				exit 1	
		;;

	esac

	shift
done

#extract list
list=$(cut -d : -f 1,5 /etc/passwd)

#order list, invert and convert to uppercase
test "$order" = 1 && list=$(echo "$list" | sort)

test "$invert" = 1 && list=$(echo "$list" | tac)

test "$uppercase" = 1 && list=$(echo "$list" | tr a-z A-Z)

#show the results
echo "$list" | tr : \\t
