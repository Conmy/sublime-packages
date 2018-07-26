#!/bin/bash

POSITIONAL=()
while [[ $# -gt 0 ]] 
do
	key=$1

	case $key in
	-f|--file)
		FILE=$2
		shift
		shift
	;;
	*)
		POSITIONAL+=("$1")
		shift
	;;
	esac
done

set -- "${POSITIONAL[@]}" # restore positional parameters

if [ $# == 0 ]; then
	echo "no params remaining. At least require windows/linux as a parameter"
	exit 1
else
	echo "remaining params $@"
fi

if [ -f "$FILE" ]; then
	echo "Using FILE from $FILE"
else 
	FILE="./config-default.json"
	echo "Default file used: $FILE"
fi

# Note: I like this but I think that a node application would achieve this quicker, given my
# current level of skills and the usefulness of only one dependency of having node.js installed.