#!/usr/bin/bash
numb=$(($2-1))

lchars=$'abcdefghijklmnopqrstuvwxyz'
uchars=$'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
nchars=$'1234567890'
schars=$'0=+-\'`"[]{}()<>;:,./~!@#$%^&*_|?\\'

lowerc=false
upperc=false
num=false
special=false

while getopts luns: flag
do
	case "${flag}" in
		l) lowerc=true;;
		u) upperc=true;;
		n) num=true;;
		s) special=true;;
	esac 
done

if [ "$lowerc" = true ] && [ "$upperc" = false ] && [ "$num" = false ] && [ "$special" = false ]; then
	for (( i = 0; i <= $numb; i++ ))
		do
			echo -n "${lchars:RANDOM%${#lchars}:1}" 
	done
	echo \n
	exit 0
elif [ "$lowerc" = false ] && [ "$upperc" = true ] && [ "$num" = false ] && [ "$special" = false ]; then
	for (( i = 0; i <= $numb; i++ ))
		do
  			echo -n "${uchars:RANDOM%${#uchars}:1}"
	done
	echo \n
	exit 0
elif [ "$lowerc" = false ] && [ "$upperc" = false ] && [ "$num" = true ] && [ "$special" = false ]; then
	for (( i = 0; i <= $numb; i++ ))
		do
  			echo -n "${nchars:RANDOM%${#nchars}:1}"
	done
	echo \n
	exit 0
elif [ "$lowerc" = false ] && [ "$upperc" = false ] && [ "$num" = false ] && [ "$special" = true ]; then
	for (( i = 0; i <= $numb; i++ ))
		do
  			echo -n "${schars:RANDOM%${#schars}:1}"
	done
	echo \n
	exit 0
elif [ "$lowerc" = true ] && [ "$upperc" = true ] && [ "$num" = false ] && [ "$special" = false ]; then
	for (( i = 0; i <= $numb; i++ ))
		do
			master=$lchars$uchars
			echo -n "${master:RANDOM%${#master}:1}"
	done
	echo \n
	exit 0
elif [ "$lowerc" = true ] && [ "$upperc" = false ] && [ "$num" = true ] && [ "$special" = false ]; then
	for (( i = 0; i <= $numb; i++ ))
		do	
			master=$lchars$nchars
			echo -n "${master:RANDOM%${#master}:1}"
	done
	echo \n
	exit 0
elif [ "$lowerc" = true ] && [ "$upperc" = false ] && [ "$num" = false ] && [ "$special" = true ]; then
	for (( i = 0; i <= $numb; i++ ))
		do
			master=$lchars$schars
			echo -n "${master:RANDOM%${#master}:1}"
	done
	echo \n
	exit 0
elif [ "$lowerc" = false ] && [ "$upperc" = true ] && [ "$num" = true ] && [ "$special" = false ]; then
	for (( i = 0; i <= $numb; i++ ))
		do
			master=$uchars$nchars
			echo -n "${master:RANDOM%${#master}:1}"
	done
	echo \n
	exit 0
elif [ "$lowerc" = false ] && [ "$upperc" = true ] && [ "$num" = false ] && [ "$special" = true ]; then
	for (( i = 0; i <= $numb; i++ ))
		do
			master=$uchars$schars
			echo -n "${master:RANDOM%${#master}:1}"
	done
	echo \n
	exit 0
elif [ "$lowerc" = false ] && [ "$upperc" = false ] && [ "$num" = true ] && [ "$special" = true ]; then
	for (( i = 0; i <= $numb; i++ ))
		do
			master=$nchars$schars
			echo -n "${master:RANDOM%${#master}:1}"
	done
	echo \n
	exit 0
elif [ "$lowerc" = true ] && [ "$upperc" = true ] && [ "$num" = true ] && [ "$special" = false ]; then
	for (( i = 0; i <= $numb; i++ ))
		do
			master=$lchars$uchars$nchars
			echo -n "${master:RANDOM%${#master}:1}"
	done
	echo \n
	exit 0
elif [ "$lowerc" = true ] && [ "$upperc" = true ] && [ "$num" = false ] && [ "$special" = true ]; then
	for (( i = 0; i <= $numb; i++ ))
		do
			master=$lchars$uchars$schars
			echo -n "${master:RANDOM%${#master}:1}"
	done
	echo \n
	exit 0
elif [ "$lowerc" = true ] && [ "$upperc" = false ] && [ "$num" = true ] && [ "$special" = true ]; then
	for (( i = 0; i <= $numb; i++ ))
		do
			master=$lchars$nchars$schars
			echo -n "${master:RANDOM%${#master}:1}"
	done
	echo \n
	exit 0
elif [ "$lowerc" = false ] && [ "$upperc" = true ] && [ "$num" = true ] && [ "$special" = true ]; then
	for (( i = 0; i <= $numb; i++ ))
		do
			master=$uchars$nchars$schars
			echo -n "${master:RANDOM%${#master}:1}"
	done
	echo \n
	exit 0
elif [ "$lowerc" = true ] && [ "$upperc" = true ] && [ "$num" = true ] && [ "$special" = true ]; then
	for (( i = 0; i <= $numb; i++ ))
		do
			master=$lchars$uchars$nchars$schars
			echo -n "${master:RANDOM%${#master}:1}"
	done
	echo \n
	exit 0
else 
	echo 'options: {l}ower-case letters, {u}pper-case letters, {n}umbers, {s}pecial characters'
	exit 1
fi

exit
