#!/bin/bash
#arguments
a=franco
b=randriamasy
#be carefull with the syntax you have to add space in order to consider it as integer otherwise it is showing strings 
expr 5 + 3
#expr is like "let" but instead it shows directly the result withou need of echo
expr 5 + 4
#adding "" will concatenate the result 
expr "5 + 4" 
#concat the variable a with variable b like a string data
expr "$a$b"
#do nothing, equal zero because not a number 
let b=$a+$b
echo $b
#store in a the result 10-3 and show it 
a=$(expr 10 - 3 )
echo $a 

