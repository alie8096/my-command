#!/bin/bash


i=1

while [ $i -lt 100 ]
do
    if [[ $(( $i % 25 )) -eq 0 ]]
    then
        break      
    fi

    echo "Number: $i"
    (( i++ ))
done
