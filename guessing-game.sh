#!/bin/bash
# this is a guessing game

name="$1"


if [[ -z "$name" ]]; then
  printf "usage: ./intro.sh <level>\n where name is the name of the user playing the game"
  exit 1
fi

level="${2:-normal}"
if [[ -z "$level" ]]; then
  printf "usage: ./intro.sh <level>\n where level is the level of the user playing the game"
  exit 1
fi

echo "===================================================================================="
echo "Hi $name, welcome to our guessing game. "
echo "===================================================================================="

echo "$level"
echo "$name"
#   number=$(( RANDOM % max + 1 ))
# easy=$(( RANDOM % 50 + 1 ))
# normal=$(( RANDOM % 100 + 1 ))
# hard=$(( RANDOM % 1000 + 1 ))
# level=$(( $easy | $normal | $hard ))
guess=-1
count=0       
             
        #     if [[ -z "$level" ]]; then 
        #       number=$(( RANDOM % 100 + 1 ))
              

        #       (( "$level" == "normal" ))
            
        #     fi

        if [[ "$level" == "easy" ]]; then
                 number=$(( RANDOM % 50 + 1 ))

            while (( guess != number )); do
                read -r -p "guess a number between 1 and 50: " guess
                #max=50
               

                if [[ -z "$guess" ]]; then
                    echo "please input a number"
                    exit 1;
                elif (( guess > number )); then
                    echo "$guess is greater than number"
                elif (( guess < number )); then
                    echo "$guess is less than number"
                fi

                ((count++))
                
            done
            
        elif [[ "$level" == "normal" ]]; then
                     number=$(( RANDOM % 100 + 1 ))

            while (( guess != number )); do
                read -r -p "guess a number between 0 and 100: " guess
               

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

        elif [[ "$level" == "hard" ]]; then
                number=$(( RANDOM % 1000 + 1 ))

            while (( guess != number )); do
                read -r -p "guess a number between 1 and 1000: " guess
                
                
                if [[ -z "$guess" ]]; then
                    echo "please input a number"
                    exit 1
                elif (( guess > number )); then
                    echo "$guess is greater than number"
                elif (( guess < number )); then 
                    echo "$guess is less than number"
                fi

                ((count++))
                 
            done
             
            
        fi
       echo "congratulations!! you have guessed the right number after trying $count number of time(s)"