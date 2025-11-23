```markdown
# Mode d'Emploi Rapide - Script `rename`

Placement : Assurez-vous que les trois fichiers scripts (`rename`, `rename_onebyone.sh` et `rename_all.sh`) sont dans le même dossier `rename`.

Permissions : Donnez les droits d'exécution au script principal : 
```bash
chmod +x rename
```

Chargement : Ouvrez votre terminal, naviguez vers ce dossier, et chargez la fonction :
```bash
source rename
```

Lancement : Appelez la fonction `rename` avec deux arguments :
```bash
rename [Dossier] [Mode]
```

Exemple 1 (renommer tous les fichiers) :
```bash
rename test all
Nouveau nom: projet
```
Résultat : `projet_0.txt, projet_1.py, ...`

Exemple 2 (renommer fichier par fichier) :
```bash
rename test one
```
Le script demande un nom pour chaque fichier du dossier.
```
