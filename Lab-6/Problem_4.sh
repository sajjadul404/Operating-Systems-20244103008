#!/bin/bash

read t

for ((i=0; i<t; i++))
do
    read a b
    
    remainder=$((a % b))
    moves=$(((b - remainder) % b))
    
    echo $moves
done
