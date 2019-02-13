#!/bin/bash

get-student(){
  file=$1;
  rollNum=$2;
  awk '{ if($5 == '$rollNum') print "\n Name : ",$1, "\n Percentage : ",$2, "\n Grade :",$3, "\n Class : ",$4, "\n Roll : ",$5 }' $file;
}

main() {
  echo "Enter the roll number to get record."
  read rollNum

  get-student $1 $rollNum

  echo "Do you want to continue?"
  read resp
  if [[ ($resp == "y") || ($resp == "Y") ]]
  then
    main $1 $rollNum
  fi
  exit
}

echo "Enter the file location :"
read file

main $file;
