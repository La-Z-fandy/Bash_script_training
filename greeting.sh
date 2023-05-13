#!/bin/bash

greeting () {
	local name=$1
	local surname=$2 
	echo  "$1 $2"
}
echo "prenom"
read name
echo "nom"
read surname
echo "prenom + nom"
greeting $name $surname
