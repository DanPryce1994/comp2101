#!/bin/bash
#
# this script rolls a pair of six-sided dice and displays both the rolls and the sum
#

# Improve this script by re-organizing it to:
#  put the number of sides in a variable which is used as the range for the random number
#  put the bias, or offset, for the RANDOM number in a variable (it is 1 for our purposes)
#     - you can think of this as the minimum value for the generated number
#  roll the dice using the variables for the range and bias i.e. RANDOM % range + bias
#  generate the sum of the dice
#  generate the average of the dice
#  display a summary of what was rolled, and what the result was

# Tell the user we have started processing
echo "Rolling..."
# roll the dice and save the results
numSides=6
bias=1
die1=$(( RANDOM % $numSides + $bias))
die2=$(( RANDOM % $numSides + $bias))
# sum up the rolls
sum=$(( die1 + die2 ))
#Average the rolls
average=$(awk "BEGIN{printf \"%.2f\", $sum/2}") #pulled from arithmetic demo
# display the results
echo "Rolled two $numSides sided dice and got $die1 and $die2 for a sum of $sum and an average of $average"
