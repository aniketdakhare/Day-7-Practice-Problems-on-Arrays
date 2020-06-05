#!/bin/bash

for (( j=0; j<=9; j++))
do
        num=$((((RANDOM%899))+100))
        arr[j]=$num
done
echo "${arr[@]}"
temp=0
for (( i=0; i<=9; i++))
do
	for ((j=$(($i+1)); j<=9; j++))
	do
        	if [ ${arr[i]} -lt ${arr[j]} ]
        	then
                	temp=${arr[i]}
			arr[i]=${arr[j]}
			arr[j]=$temp
		fi
	done
done
echo 2nd largest number is ${arr[1]} and 2nd smallest number is ${arr[8]}
