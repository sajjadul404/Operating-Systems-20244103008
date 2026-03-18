#!/bin/bash

find_missing() {
    local n=$1
    local arr=()

    for (( i=0; i<n; i++ ))
    do
        read value
        arr+=($value)
    done

    max=${arr[0]}
    for num in "${arr[@]}"; do
        if (( num > max )); then
            max=$num
        fi
    done

    for (( i=1; i<=max; i++ )); do
        found=0
        for num in "${arr[@]}"; do
            if (( i == num )); then
                found=1
                break
            fi
        done
        if (( found == 0 )); then
            echo -n "$i "
        fi
    done
    echo
}

echo -n "Enter Number: "
read n
find_missing $n

