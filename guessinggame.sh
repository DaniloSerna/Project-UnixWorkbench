#!/bin/bash

num_files=$(ls -1a | wc -l) #Count all the files in the current directory, even hiden files
echo "Guess the number of files in the current directory:"
read input
while [ $input -ne $num_files ]
do
	if [[ $input -gt $num_files ]]
	then
		echo "The number of files is less"
	elif [[ $input -lt $num_files ]]
	then
		echo "The number of files is greater"
	fi

	echo "Guess the number of files in the current directory, again:"
	read input
done
if [[ $input -eq $num_files ]]
then
	echo "Correct! the number of files is $input"
fi
