#!/bin/bash
#argument
a=45
#let <arithmetic expression>
let a=4+5
echo $a

#adding quote, you can space out the expression in order to make it more readable 
let "a = 5 + 4 "
echo $a

#increment the a value by one to 10 don't know why it stops when reaching 10 though it is equal to a = a +1
let a++
echo $a

let "a = $1 + 30"
echo $a

#there is a way to  get rid of the double quote "" by using double parentheses
a=$(( 4 + 5 ))
echo $a 
#does work even without space
a=$((3+3))
echo $a
#store the last output of the a variable and add 3
b=$((a+3))
echo $b
#call the result  of the last a variable and add 4 
b=$(($a+4))
echo $b
#increment by one the last b variable and add 1
((b++))
echo $b
