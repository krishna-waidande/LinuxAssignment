#!/bin/bash

echo "Program which calculate the average of the specified numbers";
echo "How many numbers you want to enter?";
read count;

counter=0;
output=0;

echo "Enter the numbers";

while [ $counter -lt $count ]
do
  read num;
  output=$((output+num))
  counter=$((counter+1))
done

echo "Average of numbers is : $((output/count))";
