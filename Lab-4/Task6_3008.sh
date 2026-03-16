#!/bin/bash

read a b

for ((n=a; n<=b; n++))
do
    if [ $n -lt 2 ]; then
        continue
    fi

    flag=1
    for ((i=2; i*i<=n; i++))
    do
        if [ $((n%i)) -eq 0 ]; then
            flag=0
            break
        fi
    done

    if [ $flag -eq 1 ]; then
        echo -n "$n "
    fi
done

