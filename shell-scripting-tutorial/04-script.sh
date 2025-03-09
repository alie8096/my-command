#!/bin/bash

echo -n "Enter first number: "
read NUM1

echo -n "Enter scond number: "
read NUM2

echo -n "Enter third number: "
read NUM3


if [[ $NUM1 -gt $NUM2 ]] && [[ $NUM1 -gt $NUM3 ]]
then
        echo "$NUM1 is the largest."

elif [[ $NUM2 -gt $NUM3 ]] && [[ $NUM2 -gt $NUM1 ]]
then
    echo "$NUM2 is the largest."

else
    echo "$NUM3 is the largest."
fi


if [[ $NUM1 -eq $NUM2 ]] || [[ $NUM1 -eq $NUM3 ]]
then
    echo "The number $NUM1 repeated."
fi
