#!/bin/bash

#Created by jallen6 on Oct 16, 2017 so I could be lazy and create
#    bash scripts with one command.

#Script only creates in current directory



#Make sure only one arg
if [[ $# -ne 1 ]]
then
	echo "Usage: <filename>"
	echo "Creates a blank .sh file with #!/bin/bash/ and 744 permissions"
	exit 1
fi

#Create the file
touch "${1}.sh"
#f="${1}.sh"
#Give RWX to user, R to group and others
chmod 744 "${1}.sh"
#Prepend the bash line to the file
echo '#!/bin/bash' >"${1}.sh"

