#!/bin/bash                                                                     
read -p "Input Your Name : " name
read -p "Input Your age : " age
read -p "Input Your city : " city

arr=("$name" "$age" "$city")
read -p "Input the index number : " index
if [ "$index" -eq 0 ];
then
echo "${arr[0]}"
elif [ "$index" -eq 1 ];
then
echo "${arr[1]}"

else
echo "${arr[2]}"

fi
