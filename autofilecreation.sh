#!/bin/bash
###################################################################################################################################################################################################################

											#Script: create 10 files.txt  in R1 
##################################################################################################################################################################################################################

#Repositories
R1="/home/franco/Documents/ft1/"
S=$(ls -lrt $R1)

#Initialise variable count C
C=1

#Create C number of file.txt
while (($C<=10))
do 
	echo "$C" > $R1$C.txt
	((C++))
done

ls -lrt $R1
