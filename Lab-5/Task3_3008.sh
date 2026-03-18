#!/bin/bash

Palindrom() {
    local str="$1"
    local rev=""  

    len=${#str}
    for ((i=len-1; i>=0; i--)); do
        rev="$rev${str:$i:1}"
    done

    if [ "$str" = "$rev" ]; then
        echo "Palindrome"
    else
        echo "Not Palindrome"
    fi
}

echo "Input Your String:"
read input

Palindrom "$input"

