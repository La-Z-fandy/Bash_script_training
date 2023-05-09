#!/bin/bash
#developpez.com
#créer un script qui prend un nombre de saisie et l'élève à sa propre puissance. boucle for est imposé
#read -a = array / read -s  =silence read -p = print
echo "Veuillez entrer un nombre quelconque"
read -a  n
for C in ${n[@]}
do
	if [[ $n -le 0 ]]; then
	break
	fi
	let r=$n**$C
done
echo "$r"

