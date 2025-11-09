#!/bin/bash

read -p "Entrer votre nom: " name
echo "Bonjour $name"
echo "Bienvenue sur ton terminal!"
read -p "Souhaitez-vous faire des calculs Y/N : " avis

if [ "$avis" = "Y" ]; then
    echo "1) Addition"
    echo "2) Soustraction"
    echo "3) Multiplication"
    echo "4) Division"
    read -p "Choisissez une option : " avis

    if [ "$avis" = "1" ]; then
        read -p "Donner le nombre d'entiers : " nb_entier
        somme=0
        for (( i=0; i<nb_entier; i++ )); do
            read -p "Entre l'entier $((i+1)) : " entier
            (( somme += entier ))
        done
        echo "La somme totale est : $somme"
   elif [ "$avis" = "2" ]; then
        read -p "Donner le nombre d'entiers : " nb_entier
        somme=0
        for (( i=0; i<nb_entier; i++ )); do
            read -p "Entre l'entier $((i+1)) : " entier
            (( somme -= entier ))
        done
        echo "La difference est : $somme"
   elif [ "$avis" = "3" ]; then
        read -p "Donner le nombre d'entiers : " nb_entier
        somme=1
        for (( i=0; i<nb_entier; i++ )); do
            read -p "Entre l'entier $((i+1)) : " entier
            (( somme *= entier ))
        done
        echo "Le produit est : $somme"
  elif [ "$avis" = "4" ]; then
    read -p "Donner le premier entier : " first
    read -p "Combien d'autres entiers à diviser : " nb_entier
    quotient="$first"

    for (( i=0; i<nb_entier; i++ )); do
        read -p "Entier $((i+1)) : " entier
        if [ "$entier" -eq 0 ]; then
            echo "Erreur : division par zéro impossible, on saute ce nombre."
            continue
        fi
        quotient=$(echo "scale=2; $quotient / $entier" | bc)
    done

    echo "Résultat de la division : $quotient"
    fi
else
    echo "A la prochaine"
fi

