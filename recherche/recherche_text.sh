 #!/bin/bash
 recherche_mot() { 
  phrase="$1"     
   choix="$2"      
   carac="$3" 
if [ "$choix" = "mot" ]; then

    # On utilise "grep" pour compter les occurrences du mot SANS ponctuation.
    # -o : n'affiche que les parties correspondantes.
    # -i : ignore la casse (optionnel, mais souvent utile pour la recherche de mots).
    # -w : sélectionne uniquement les correspondances qui forment des mots entiers.

    comp=$(echo "$phrase" | grep -o -i -w "$carac" | wc -l)

    if [ "$comp" -gt 0 ]; then 
        echo "Il y a $comp occurrence(s) du mot '$carac' dans le fichier courant."
    else 
        echo "Introuvable"
    fi
elif [ "$choix" = "caractere" ]; then
    longueur=${#phrase}
    comp=0
    for (( i=0; i<longueur; i++ )); do
    c=${phrase:$i:1}
    if [ "$c" = "$carac" ]; then
        (( comp+=1 ))
    fi
    done
    if [ "$comp" -gt 0 ]; then 
      echo "Il y a $comp occurrence(s) du mot '$carac' dans le fichier courant."
    else 
      echo "Introuvable"
    fi
else 
     echo " Mauvais choix "
fi
}


