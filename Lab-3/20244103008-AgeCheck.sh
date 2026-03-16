#!/bin/bash

echo "Enter your age:"
read age

if [ "$age" -ge 18 ]; then
    echo "Adult"
else
    echo "Minor"
fi

