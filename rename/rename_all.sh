#!/bin/bash

rename_all(){
folder="$1"
new_name="$2"
if [ -d "$folder" ]; then
	i=0
	for file in "$folder"/*; do
		if [ -f "$file" ]; then 
			ext="${file##*.}"
			mv "$file" "$folder/${new_name}_${i}.${ext}"
			((i++))
		fi
	done
		
else
echo "Ce dossier ($folder) n'existe pas "
fi

}
