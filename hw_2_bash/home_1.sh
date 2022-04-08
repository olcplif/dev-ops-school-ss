#!/bin/bash

USER=$1
FILE=$2
KEY=$3
DETAIL=1
SUDO=''
RED='\033[1;31m'
GREEN='\e[32m'

if [[ "$1" == "--help" ]]; then
	echo "Using: ./home_1.sh [KEY] [USER] path to FILE or DIR..."
	echo "Keys:"
	echo "	-d, --detail	show script execution details"
	echo "	--help		show this help and exit"
	exit 1
fi

# Check parameter for key.
if ! [[ -z "$KEY" ]]; then
	if [[ "$KEY" == "-d" ]] || [[ "$KEY" == "--detail" ]]; then
		DETAIL=0
	else
		echo -e "${RED}Unknown key."
		echo "About using the script: ./home_1.sh --help"
		exit 1
	fi
fi

# Check if the script is running from root.
if [[ $EUID != 0 ]]; then
	SUDO='sudo'
	if [[ $DETAIL = 0 ]]; then
		echo "The script is running with sudo."
	fi
fi


#Check if the user is exists.
exists=$(grep -c "^$USER:" /etc/passwd)

if [ $exists -eq 0 ]; then
	echo -e "${RED}The user $USER does not exist."
	exit 1
else
	if [[ $DETAIL = 0 ]]; then
		echo "The user $USER exists."
	fi
fi

#Check if the directory or file is exists.
if ! [ -e "$FILE" ]; then
	echo -e "${RED}The file or directory $FILE does not exists!"
	exit 1
elif [[ $DETAIL = 0 ]]; then
	echo "The file or directory $FILE exists."	
fi

change_owner=`$SUDO chown -R $USER:$USER $FILE`

echo $change_owner

echo -e "${GREEN}The owner of $FILE was changed successfully."

exit $code

