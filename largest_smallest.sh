#!/bin/bash

for (( j=0; j<=9; j++))
do
	num=$((((RANDOM%899))+100))
	arr[j]=$num
done
echo "${arr[@]}"
max=0
max2=0
for (( i=0; i<=9; i++))
do
        if [ ${arr[i]} -gt $max ]
        then
		max2=$max
                max=${arr[i]}
	elif [ ${arr[i]} -gt $max2 -a ${arr[i]} -ne $max ]
        then
                max2=${arr[i]}
	fi
done
min=$max
min2=0
for (( i=0; i<=9; i++))
do
	if [ ${arr[i]} -lt $min ]
	then
		min2=$min
                min=${arr[i]}
	elif [ ${arr[i]} -lt $min2 -a ${arr[i]} -ne $min ]
	then
		min2=${arr[i]}
	fi
done
echo 2nd largest number is $max2 and 2nd smallest number is $min2

