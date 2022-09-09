#!/usr/bin/env bash
echo "[Welcome to the amazing Guessing game]"

function ask {
	echo "Please enter the number of files in the current directory:"
	read guess
    files=$(ls -1 | wc -l)
}

ask 


while [[ $guess -ne $files ]]
do
	if [[ $guess -lt $files ]] 
	then
		echo "No, no, no too low!"
	else
		echo "It is too high Mister."
	fi
	ask

    done

echo "Well done Sir! It is the correct answer, here is the list of files:"
echo "---" && ls -1