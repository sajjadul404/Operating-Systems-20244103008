#!/bin/bash

isArmstrong() {
    num=$1
    temp=$num
    sum=0

    while [ $temp -gt 0 ]
    do
        digit=$((temp % 10))
        sum=$((sum + digit*digit*digit))
        temp=$((temp / 10))
    done

    if [ $sum -eq $num ]; then
        echo "Armstrong Number"
    else
        echo "Not Armstrong"
    fi
}

read num
isArmstrong $num

