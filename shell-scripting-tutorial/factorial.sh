#!/bin/bash


: 'factorial() {
    local f=1
    local n=$1

    while [[$n -gt 0 ]]
    do
        f=$((f * n))
        (($n--))
    done

    echo "$f"
}

factorial'


# Recursive
factorial() {
    if [[ $1 -le 1 ]]; then
        echo 1
    else
        local temp=$(( $1 - 1 ))
        local result=$( factorial "$temp" )
        echo $(( $1 * result ))
    fi
}

factorial $1
