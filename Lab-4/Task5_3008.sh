#!/bin/bash
read -p "Enter a number: " n

for ((i=2; i<n; i++))
do
  if (( n % i == 0 )); then
    echo "$n is Not Prime"
    exit
  fi
done

echo "$n is a prime number"

