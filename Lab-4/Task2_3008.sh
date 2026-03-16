#!/bin/bash

read -p "Enter a number: " n

a=1
b=1

for ((i=1; i<=n; i++))
do
  if [ $i -le 2 ]; 
then
    echo -n "1 "
  else
    c=$((a + b))
    echo -n "$c "
    a=$b
    b=$c
  fi
done

