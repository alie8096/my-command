#!/bin/bash

echo -n "Enter a number: "
read VAR


if [[ $VAR -gt 10 ]]
then
    echo "Entered number is greater than 10"
elif [[ $VAR -eq 10  ]]
then
    echo "Entered number is equal to 10"
else
    echo "Entered number is less than 10"
fi
