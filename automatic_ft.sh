#!/bin/bash
###################################################################################################################################################################################################################


											#Script: Transfer File From R1 to R2 and Archive in R3	
###################################################################################################################################################################################################################

#Repositories
R1="/home/franco/Documents/ft1/"
R2="/home/franco/Documents/ft2/"
R3="/home/franco/Documents/tmp/ARC/"

#Convenient commands

NF=$(ls $R1 | wc -l)
SO=$(ls -lrt $R1)
						
#Test if files exist in R1

if (test -e $R1) 
then 
	echo "Number of Element found: $NF"
	echo "$SO"
else 
	echo "Files Not found "
fi

#Transfert files from R1 to R2 and archive it

while (test -e $R1)
do 
	cp $R1* $R3 
	echo "File archived"
	gzip -r $R3 
	echo "File zipped"
	mv $R1* $R2
	echo "File successfully moved"
	exit
done 
