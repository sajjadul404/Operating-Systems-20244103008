#!/bin/bash

Factorial() {
    local n=$1
    local fact=1

    for (( i=1; i<=n; i++ )); do
        fact=$(( fact * i ))
    done

    echo "Factorial: $fact"
}

echo "Input A Number"
read abc

Factorial $abc
