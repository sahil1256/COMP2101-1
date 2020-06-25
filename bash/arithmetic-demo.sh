#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label
#asking the number from the user 3 times
read -p "Please tell the first number" firstnumber
read -p "please tell the secomd number" secondnumber
read -p "Please enter the third numner" thirdnumber

#storing the sum of 3 numbers in variable
sum=$(( firstnumber + secondnumber + thirdnumber))
#storing the product of three numbers in variable called product
product=$(( firstnumber * secondnumber * thirdnumber))

#displaying the results using echo commad
echo "the sum of $firstnumber, $secondnumber and $thirdnumber is $sum"
echo "the product of the $firstnumber, $secondnumber and $thirdnumber is $product"
