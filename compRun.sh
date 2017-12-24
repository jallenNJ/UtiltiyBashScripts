#!/bin/bash

#Bash script created to make it easier to run and compile code while 
#testing

#If a compiling error occurs, script will pause, and will enter vim
# on a non number keypress 



if [ $# -ne 2 ]
then
	echo "Usage: <fileToCompile> <resultName>"
	exit -1
fi

#echo "$1"' -o '"$2"
clear

if  g++ $1 -o $2  
then
	./$2
else
	echo -e "\n\n"
	read -p " Enter a number to not enter vim " input

	if [ $input -gt 0 ] 2>/dev/null
	then
		echo "Script will exit"
		exit
	fi
	clear
	vim $1

fi
