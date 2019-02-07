#!/bin/bash

# Accept a file name and a number (x). Display x lines from the top of the file. Check if the file exists and is readable. The value of x should not exceed the total number of lines in the files. Display suitable messages in case an error is encountered.

readFile() {
  if [ ! -r $1 ]
  then 
    echo "File does not exists or does not have a read permission."
    exit
  fi

  fileLines=`cat $1 | wc -l`
  if [[ $2 -gt fileLines ]]
  then 
    echo "The input lines exceeds the total lines in the file"
    exit
  fi

 head -$2 $1
}

main() {
  echo "Enter the file name"
  read filename
  echo "Enter the number of lines to be printed."
  read lineNum;

  readFile $filename $lineNum
}
main;
