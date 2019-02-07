#!/bin/bash
#Write a shell script to copy one file to another line by line.

echo "Enter the file name to copy line by line"
read file;

line_no=$(awk '{x++} END {print x}' $file)

for i in `seq 2 $line_no`
do
sed -n $i\p $file >> output.txt
done

echo "$file is copied line-by-line into output.txt"
