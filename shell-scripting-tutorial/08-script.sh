#!/bin/bash

file=./directory/08-file.txt

while read -r line
do
    echo $line
    sleep 0.1 
done < "$file"
