#!/bin/bash

read -p "Enter a year: " year

is_leap() {
    local y=$1
    if (( (y % 4 == 0 && y % 100 != 0) || (y % 400 == 0) )); then
        return 0
    else
        return 1
    fi
}

if is_leap $year; then
    echo "Nearest leap year: $year"
    exit
fi

i=1
while true
do
    prev=$((year - i))
    next=$((year + i))

    if is_leap $prev; then
        echo "Nearest leap year: $prev"
        break
    fi

    if is_leap $next; then
        echo "Nearest leap year: $next"
        break
    fi

    ((i++))
done
