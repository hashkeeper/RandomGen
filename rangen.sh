#!/usr/bin/bash
numb=$(($2-1))

lchars=$'abcdefghijklmnopqrstuvwxyz'
uchars=$'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
numbs=$'1234567890'
schars=$'0=+-\'`"[]{}()<>;:,./~!@#$%^&*_|?\\'

masarr=$''
finarr=$''

while getopts "luns:" flag
do
	case "${flag}" in
		l) masarr+=${lchars};;
		u) masarr+=${uchars};;
		n) masarr+=${numbs};;
		s) masarr+=${schars};;
	esac 
done

for (( i = 0; i <= $numb; i++ ))
	do
		finarr="$finarr${masarr:RANDOM%${#masarr}:1}"
done

echo $finarr
exit
