#!/usr/bin/bash
numb="$2"

lchars=$'abcdefghijklmnopqrstuvwxyz'
uchars=$'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
numbs=$'1234567890'
schars=$'0=+-\'`"[]{}()<>;:,./~!@#$%^&*_|?\\'

finarr=$''

while getopts ":l:u:n:s:" flag
do
	case "${flag}" in
		l) finarr+=${lchars};;
		u) finarr+=${uchars};;
		n) finarr+=${numbs};;
		s) finarr+=${schars};;
	esac 
done

echo $finarr
exit
