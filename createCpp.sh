#!/bin/bash

#Todo, add handling if file exists


if [ $# -ne 1 ]
then
	echo "Usage: <filename>"
fi


file="$1".cpp

if [ -f $file ]
then
	echo "File exists, script will exit to prevent writing to it"
	exit 1
fi

touch $file

exec >$file
echo '/*' 
echo '*'"      $USER@ramapo.edu"
echo '* CMPS' 
echo '*'
echo '*'
echo '* Assignment:'
echo '*' 
echo '* Status:'
echo '*'
echo '* Notes'
echo '*'
echo '*/'
echo -e "\n\n\n"
echo '#include <iostream> //For cout and cin'
echo 'using namespace std;'
echo -e "\n\n"
echo 'int main(int argc, char* argv[]){'
echo -e "\n\n"
echo 'return 0;'
echo '}'

