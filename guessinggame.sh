#!/usr/bin/env bash
# File: guessinggame.sh

echo "Guess the number of files in the current directory, then press the Enter key please:"
read guess

function nufdir {
	local number=$(ls | wc -l)-1
	echo $number
}

number_of_files=$(nufdir)

while [[ $guess -ne $number_of_files ]]
do
	if [[ $guess -gt $number_of_files ]]
	then
		echo "Your guess was either too high! please try to guess again"
	else [[ $guess -lt $number_of_files ]]
		echo "Your guess was either too low! please try to guess again"
	fi
	echo
	echo "Please guess again:"
	read guess
done

echo "Congratulations! your guess is correct."
