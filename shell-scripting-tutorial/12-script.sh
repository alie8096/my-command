#!/bin/bash


: 'read name

greeting() {
    echo "Hello, $name"
}

greeting'

var1=10
var2="Linux"

function1() {
    local var1=30
    var2="Debian"

    echo "In dunction VAR1=$var1, VAR2=$var2"
}

echo "Before function call VAR1=$var1, VAR2=$var2"

function1



func2() {
    local name="Linux"
    echo $name
}

res_func="$(func2)"
echo "$res_func"
