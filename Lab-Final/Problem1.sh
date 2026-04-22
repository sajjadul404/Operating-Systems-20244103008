#!/bin/bash

read -p " Enter Size " n

echo " Enter numbers "

for ((i=0; i<n; i++))
do
read Arr [$i]
done

read -p "Enter Search Value: " s

position =1 
for(( i =0; i<n; i++))
do 
if (( Arr[$i] == $s ))
then
position = $((i))
fi
done 
if (( position !=  -1 )) then
echo " Number found ar position  $((position + 1 ))"

else 
echo " Number not found "

fi

