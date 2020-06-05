#!/bin/bash

n=0
for (( i=0; i<=100; i++))
do
	rim=$(($i%10))
	que=$(($i/10))
	if [ $rim -eq $que -a $i -ne 0 ]
	then
		arr[$n]=$i
		((n++))
	fi
done
echo "${arr[@]}"
