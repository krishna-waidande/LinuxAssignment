#!/bin/bash

#Write a shell script which will accept three nos. from the keyboard and finds the largest of them.

findLargestNum() {
  if [[ $1 -gt $2 && $1 -gt $3 ]]
  then
    echo  "Largest number is : $1"
    elif [ $2 -gt $3 ]
    then
      echo "Largest number is : $2"
    else 
      echo "Largest number is : $3"
  fi
}

main() {
  echo "Shell is written to find largest numbers from given input."
  echo "Enter first number";
  read number1;
  echo "Enter 2nd number";
  read number2;
  echo "Enter 3rd number";
  read number3;
  findLargestNum $number1 $number2 $number3
}
main;
