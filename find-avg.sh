#!/bin/bash

echo "Program which calculate the average of the specified numbers";
echo "How many numbers you want to enter?";
read count;

if [ $count -le 0 ]
then
  echo "Invalid input"
  exit;
fi

counter=0;
sum=0;

echo "Enter the numbers";

while [ $counter -lt $count ]
do
  read num;
  sum=$((output+num))
  counter=$((counter+1))
done

echo "Average of numbers is : $((sum/count))";
