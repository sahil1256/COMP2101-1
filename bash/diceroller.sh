#!/bin/bash
#
# this script rolls a six-sided die
#

# Task: Improve this script by making it roll as many dice as there are letters in your first name, instead of just one

# roll the dice and display the result
echo "
Rolling...
$(( RANDOM % 6 + 1)) rolled
"
echo "
rolling the dice 9 times as bhupinder conatines 9 letter,
$(( RANDOM % 6 + 1)), $((RANDOM % 6 + 1)), $(( RANDOM % 6 + 1)), $(( RANDOM % 6 + 1)), $(( RANDOM % 6 + 1)), $(( RANDOM % 6 + 1)), $(( RANDOM % 6 + 1)), $(( RANDOM % 6 + 1)), $(( RANDOM % 6 + 1))
rolling done 
"
