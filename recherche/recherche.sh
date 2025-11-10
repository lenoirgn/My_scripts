#!/bin/bash
source "$(dirname "$0")/recherche_text.sh"
recherche(){
fichier="$1"       
choix="$2"        
carac="$3" 

phrase=$(cat "$fichier")

recherche_mot "$phrase" "$choix" "$carac"

} 

