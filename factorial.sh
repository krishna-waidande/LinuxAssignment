#!/bin/bash

#Write a shell script which will calculate the factorial of an integer entered from the keyboard.

factorial()
{
  if [ $1 -le 1 ]
  then
     echo 1
  else
     answer=$(factorial $[$1-1])
     echo $(($1 * answer))
  fi
}

main() {
  echo "Enter the input number to calculate the factorial"
  read input
  echo "Factorial of $input is :"
  factorial $input 
}

main;
