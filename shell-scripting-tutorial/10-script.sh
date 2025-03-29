#!/bin/bash


# echo "Arg1: $1"
# echo "Arg2: $2"

args=("$@")


echo ${args[0]} ${args[1]}

echo $@

echo $#
