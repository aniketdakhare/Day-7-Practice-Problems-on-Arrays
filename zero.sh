#!/bin/bash

arr=(5 -2 -3 -4 6)
n=${#arr[@]}

for ((i=0; i<$(($n-2)); i++))
do
        for ((j=$(($i+1)); j<$(($n-1)); j++))
        do
        	for ((k=$(($j+1)); k<$n; k++))
            	do
                	if [ $((${arr[$i]}+${arr[$j]}+${arr[$k]})) == 0 ]
                	then
                		result[0]="${arr[$i]}"
                		result[1]="${arr[$j]}"
                		result[2]="${arr[$k]}"
				echo ${result[@]}
                	fi
        	done
        done
done
