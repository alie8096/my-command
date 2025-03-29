#!/bin/bash

i=0
while [ $i -le 9 ]
do
    echo "Number: $i"
    (( i++  ))
done


# Infinite Loop
while :
do
    echo "Press <Ctrl + C> to exit"
    sleep 1
done

