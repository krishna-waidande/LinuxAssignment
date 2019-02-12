#!/bin/bash

#You are given a file with four space-separated columns containing the scores of students in three subjects. The first column contains a single character (), the student identifier. The next three columnshave three numbers each. The numbers are between and, both inclusive. These numbers denote the scores of the students in English, Mathematics, and Science, respectively.Write a shell script to identify those lines that do not contain all three scores for students.

echo "Enter the input file name"
read file

if [ ! -r $file ]
then	
  echo "Specified file does not exist";
  exit;
fi  

awk '{ if ($2 =="" || $3 =="" || $4 =="") print "Marks not enter for",$1 }' $file
