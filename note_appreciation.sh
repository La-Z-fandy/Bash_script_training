#!/bin/bash 
#créer un script qui demande à l'utilisateur de saisir une note et qui affiche un message en fonction de cette note:
	#"très bien" si la note est entre 16 et 20
	#"bien" lorsqu'elle est entre 14 et 16
	#"assez bien" si la note est entre 12 et 14
	#"moyen" si la note est entre 10 et 12
	#"insuffisant" si la note est inférieure à 10
#Code
#variables:
G1="très bien"
G2="bien"
G3="assez bien"
G4="moyen"
G5="insuffisant"

#interaction with the user
echo "veuilliez saisir une  note /20:"
#user input N = Number given by the use
read N
#logic
#in an arithemtic function, there is no need to put the $
#it is possible to change the condition in the if section : instead of  >=  -->  >=  "greater or equel and <=  (less or equal)
if ((   N  >=  16 )) 
then 
	echo "Vous avez la mention: $G1"
elif ((   N  >=  14 ))   && ((   N <=   16 ))  
then
	echo "Vous avez la mention: $G2"
elif ((   N  >=  12 ))   && ((   N <=   14 )) 
then 
	echo "vous avez la mention: $G3"

elif ((   N  >=  10 ))   && ((   N <=   12 )) 
then
	echo "vous avez la mention: $G4"
else 
	echo "vous avez la mention: $G5"
fi


