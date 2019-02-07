#!/bin/bash

get-student(){
reqRowNum=`cat student.txt | cut -d ',' -f5 | grep -nw $1 | cut -d ':' -f1`

if [ ! $reqRowNum ]
then
echo "Not found"
return
fi

reqLine=`sed "${reqRowNum}q;d" student.txt`
reqRoll=`echo $reqLine | cut -d ',' -f5`
reqName=`echo $reqLine | cut -d ',' -f1`
reqClass=`echo $reqLine | cut -d ',' -f4`
reqGrade=`echo $reqLine | cut -d ',' -f3`
reqPer=`echo $reqLine | cut -d ',' -f2`

echo "Name: $reqName"
echo "Roll: $reqRoll"
echo "Grade: $reqGrade"
echo "Class: $reqClass"
echo "Percent: $reqPer"
}

main() {
get-student $1
echo "Do you want to continue?"
read resp
if [[ ($resp == "y") || ($resp == "Y") ]]
	then
	echo "Enter roll num to search"
	read roll
	main $roll
fi
exit
}

main $1
