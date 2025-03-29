#!/bin/bash


planet_array=("Mercury" "Venus" "Earth" "Mars")

echo "${planet_array[@]}"
echo "${!planet_array[@]}"
echo "${#planet_array[@]}"


for i in ${planet_array[@]}; do
    echo "planet: $i"
done
