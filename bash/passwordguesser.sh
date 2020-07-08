#!/bin/bash
# This script demonstrates testing to see if 2 strings are the same
# it also demonstrates using conditional execution

# TASK 1: Improve it by asking the user for a password guess instead of using inline literal data (i.e. TestString)
# TASK 2: Improve it by rewriting it to use the if command
#         The if command should test if they got it right, in which case it should tell them they got it right
#         The if command should tell them they got it wrong
# TASK 3: Improve it by giving them 5 tries to get it right before failing
#           *** Do not use the exit command, and do not use a loop (e.g. while or for)

guess="TestString"
referenceString="password"
#taking the input from the user (password)
read -s -p "Please guess the password" guess
echo
#using if condition if the password is equal to the myString's value, then telling user Correct passsord.
if [ $guess = $referenceString ]; then
  echo "Correct password. Access"
#using else condition if the password is incorrect, then asking and storing the input again in the same variable
else
  read -s -p "Please guess the password second time, previous was incorrect! :" guess
  #######################################################
  #repeating the process 4 times more, as we are supposed to ask them 5 times in total!
  #######################################################
  if [ $guess = $referenceString ]; then
    echo"Correct password, Access granted!!"
  else
    read -s -p "Please enter the password again third time, previous 2 attempts are gone. 3 attempt left:" guess
    if [ $guess = $referenceString ]; then
      echo "Correct password "
    else
      read -s -p "Please enter the password 4th time as previous attempt is incorrect again. 2 attemots left" guess
      if [ $guess = $referenceString ]; then
        echo "the password is correct"
      else
        read -s -p "Please enter the passqord again the second last time. 1 attempt left" guess
        if [ $guess = $referenceString ]; then
          echo "The password is correct"
        else
          echo "Password incorrect, you do not have any attempt left, Sorry" guess
        fi
      fi
    fi
  fi
fi
[ $guess = $referenceString ] && echo "Correct!" || echo "Incorrect."
