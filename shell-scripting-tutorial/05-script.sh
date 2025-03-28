#!/bin/bash

for i in Mercury Venus Erth Marth Jupiter Saturn Uranus Neptune Pluto
do
    echo "Planet Name: $i"
done

echo "-----"

for num in {1..20..2}
do
    echo "Number: $num"
done

echo "-----"

for i in {1..10}
do
    for j in {1..10}
    do
        printf "%d\t" $[i * j]
    done
    echo -e "\n"
done

echo "----"


echo $[{1..10}*{1..10}] | xargs -n10 | column
