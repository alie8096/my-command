#!/bin/bash

for i in {1..5};do
    if [[ $i == 2 ]];then
        continue
    fi

    echo "Number: $i"
done


for i in {1..100};do
    if [[ $(( $i%23 )) == 0 ]];then
    break
  fi
  
  echo "Number: $i"
done
