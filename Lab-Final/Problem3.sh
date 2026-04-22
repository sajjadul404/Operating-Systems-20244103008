#!/bin/bash

read -p " Enter Number: " a
read -p " Enter Linit: " b

for ((i=1; i<=b; i++))
do
echo " $a * $i = $(($a*$i)) "
done
