#!/bin/bash

read -p "Enter Number:" n

if [ $((n % 2)) -eq 0 ]; then
    echo $((n / 2))
else
    echo $((-(n + 1) / 2))
fi
