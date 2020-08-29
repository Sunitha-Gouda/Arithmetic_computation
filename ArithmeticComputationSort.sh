#!/bin/bash

echo " Heading changed "

declare -A sorting

read -p "Enter the value  of a = " vara
read -p "Enter the value  of b = " varb
read -p "Enter the value  of c = " varc

exp1=$(($vara+$varb*$varc))
	echo " a+b*c = " $exp1

exp2=$(($vara*$varb+$varc))
   echo " a*b+c = " $exp2

exp3=$(($varc+$vara/$varb))
   echo " a+b/c = " $exp3

exp4=$(($vara%$varb+$varc))
   echo " a-b+c = " $exp4
exp4=$(($vara-$varb+$varc))
   echo " a+b+c = " $exp4


sorting=([0]=$exp1 [1]=$exp2 [2]=$exp3 [3]=$exp4)
	echo ${sorting[@]}

for key   in ${!sorting[@]}
do
	array+=(${sorting[$key]})
done
	echo ${array[@]}

lengthOfArray=${#array[@]}
	echo "Length of an array is "$lengthOfArray

#sorting array in descending order
for ((i=0;i<$lengthOfArray;i++))
do
	for((j=$(($i+1));j<$lengthOfArray;j++))
	do
		if [ ${array[i]} -lt ${array[j]} ]
		then
				temp=${array[i]}
				array[$i]=${array[j]}
				array[$j]=$temp
		fi
	done
done
	echo "Array in descending order" ${array[@]}

#sorting array in descending order

for ((i=0;i<$lengthOfArray;i++))
do
   for((j=$(($i+1));j<$lengthOfArray;j++))
   do
      if [ ${array[i]} -gt ${array[j]} ]
      then
            temp=${array[i]}
            array[$i]=${array[j]}
            array[$j]=$temp
      fi
   done
done
	echo "Array in ascending order" ${array[@]}

