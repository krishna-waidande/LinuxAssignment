#!/bin/bash

#Write a script which when executed checks out whether it is a working day or not? 
#(Note: Working day Mon-Fri)

  dayOfWeek=$(date +"%u")
  echo "Day of week :$dayOfWeek"

  if [ $dayOfWeek -gt 6 ]
  then
    echo "Today is weekend.. :)"
    exit
  fi
  echo "Today is working day."
