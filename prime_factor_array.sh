#!/bin/bash

read -p "Enter the Number  " num

n=0
for ((i = 2; $num > 1 ; i++))
do
	for (( j=$i; $(($num%$i)) == 0 ; j++ ))
	do
		arr[$n]=$i
		num=$(($num/$i))
		((n++))
	done
done
echo "${arr[@]}"
