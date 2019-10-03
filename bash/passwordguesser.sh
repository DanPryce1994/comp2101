#!/bin/bash
# This script demonstrates testing to see if 2 strings are the same

# TASK 1: Improve it by asking the user for a password guess instead of using inline literal data
# TASK 2: Improve it by rewriting it to use the if command
# TASK 3: Improve it by giving them 3 tries to get it right before failing (test 3 times but only if necessary)
#           *** Do not use the exit command


referenceString="password"
flag=0
while [ $flag -lt 3 ]; do
	echo "please enter a password guess: "
	read -s myString
	
	if [ $myString = $referenceString ]; then
		echo "You guessed the password!"
		break
	elif [ $flag -eq 1 ]; then
		echo "The password eludes you. This is your last guess: "
		flag=$((flag+1))
		continue
	elif [ $flag -eq 2 ]; then
		echo "You have used all your guesses!"
		break
	else
		echo "The password eludes you, please try again"
		flag=$((flag+1))
		continue
	fi
done
