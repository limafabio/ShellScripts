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
#-----------------------------------
#
#Example:
# $ ./users.sh
#
#-----------------------------------
#
#History
#
#v1.0 2016/09/08, FabioLima
#
#-----------------------------------
#
#License: GPL
#

cut -d : -f 1,5 /etc/passwd | tr : \\t
