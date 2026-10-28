#!/bin/bash
# this is a guessing game

name="$1"

if [[ -z "$name" ]] then
  printf "usage: ./intro.sh <level>\n where name is the name of the user playing the game"
  exit 1
fi

echo "========================================"
echo "Hi $name, welcome to our guessing game"
echo "========================================"

number=$(( RANDOM % 100 + 1 ))
guess=-1
count=0

while (( guess != number )); do
   read -r -p "Please guess a number between 0 and 100: " guess

   if [[ -z "$guess" ]]; then
     echo "please input a number:"
     exit 1;
   elif (( guess > number )); then
     echo "$guess is greater than the number"
   elif (( guess < number )); then
     echo "$guess is less than the number"
   fi

   ((count++))

done

echo "congratulations!! you have guessed the right number after trying $count number of time(s)"