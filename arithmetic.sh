#!/bin/bash
#argument
a=45
#let <arithmetic expression>
let a=4+5
echo $a

#adding quote, you can space out the expression in order to make it more readable 
let "a = 5 + 4 "
echo $a

#increment the a value by on to 10 don't know why it stops when reaching 10 though it is equal to a = a +1
let a++
echo $a

let "a = $1 + 30"
echo $a
