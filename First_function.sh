#!/bin/bash
#first function

#create a function that print "hello world this is franco"
function helloworld () {
	echo "Helle world this is franco"
#for no reason return the number 32
	return 32
}
#call the function hellowrod 
helloworld
#show me everything this function does but you can also ask a specific variable in  this function
echo $?

