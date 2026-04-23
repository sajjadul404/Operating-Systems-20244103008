#!/bin/bash
read -p " Enter size of Array " size
read size
n = size

echo "Enter Number "
for ((i=0;i<size;i++))
do
read Arr[$i]
done

posative=0
negative=0
zero=0

for ((i=0; i<size; i++))
do
if (( $Arr[i]>0)) then
posative =  $((posative + 1))
elif (( $Arr[i]<0)) then
nagative = $((nagative + 1))
else
zero = $((zero + 1))
fi
done

echo  " posative = $posative "
echo " nagative = $nagative "
echo " zero = $zero "


