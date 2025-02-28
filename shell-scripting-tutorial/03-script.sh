#!/bin/bash


echo -n "Enter first number: "
read NUM1

echo -n "Enter second number: "
read NUM2

echo -n "Enter third number: "
read NUM3


if [[ $NUM1 -gt $NUM2 ]] && [[ $NUM1 -gt $NUM3 ]]; then
    echo "$NUM1 the largest."
elif [[ $NUM2 -gt $NUM1 ]] && [[ $NUM2 -gt $NUM3 ]]; then
    echo "$NUM2 the largest."
elif [[ $NUM1 -eq $NUM2 ]] && [[ $NUM1 -eq $NUM3 ]]; then
    echo "$NUM1 = $NUM2 = $NUM3"
else
    echo "$NUM3 the largest."
fi

