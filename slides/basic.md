## Utilisation basique

----

### Cloner un repository Git
* Cloner une copie d'un repository distant
```bash
git clone <url>
```

----

### Les différents états des fichiers

* untracked
* tracked
  * committed : le fichier a été stocké dans la base de données Git
  * modified : le fichier a été modifié mais n'a pas encore été commité
  * staged : le fichier modified est enregistré dans sa version actuelle pour faire partie du prochain commit

----

### Les différents états des fichiers
<img src="images/lifecycle.png" style="background:none; border:none; box-shadow:none;"/>

----

### Vérifier les statut des fichiers
Dès que vous avez un doute sur l'état des fichiers dans votre repo
```bash
git status
```
Option fréquente:
  * `-s` : show status concisely

----

### Ajouter un fichier à la Staging Area
```bash
git add <files>
```
> Utilisé pour les fichiers untracked ou modified de la même façon
Exemple:
```bash
git add myfile.txt
git add .
```

----

### Ignorer des fichiers
Pour ignorer des fichiers afin qu'ils ne soient pas ajoutés à la Staging Area lors d'un `add`, il est possible de créer un fichier .gitignore dans le repo git.

Exemple de fichier `.gitignore`
```
*.log
build/
doc/**/*.pdf
```

----

### Lister les changements
* Fichier modified
```bash
git diff
```
* Fichier staged
```bash
git diff --staged
# or
git diff --cached
```

----

### Commiter les modifications
```bash
git commit
```
Option fréquente:
  * `-m <commit_message>` : précise le message de commit sans ouvrir d'éditeur

----

### Supprimer des fichiers du référentiel
```bash
git rm <file>
```
Pour garder le fichier et le passer en untracked
```bash
git rm --cached <file>
```

----

### Renommer / Déplacer des fichiers
```bash
git mv <from> <to> 
```

----

### Afficher l'historique
```bash
git log
```

----

### Git log: Affichage

Option | Description
--- | ---
-N | N: nombre de commit à afficher
-p | affiche les diff
--stat | affiche les statistiques liées aux fichiers modifiés
--pretty | arg: type d'affichage demandé
--graph | affiche une représentation graphique de l'historique de commit

----

### Git log: Filtre (1)

Option | Description
--- | ---
--since | time: time since commit (ex: --since=2.weeks)
--until | time: time until commit (ex: --since=2.weeks)
--author | string: partie du nom de l'autheur du commit
--commiter | string: partie du nom du commiter

----

### Git log: Filtre (2)

Option | Description
--- | ---
--grep | string: mot à rechercher dans les messages de commit
--all-match | affiche uniquement les commits validant toutes les règles
-S | affiche uniquement les commits ayant modifier du code contenant la <string>
--no-merges | n'affiche pas les commit de merges techniques

----

### Unstage 
Afin de faire passer des fichiers de la Staging Area vers le statut modified
```bash
git reset HEAD <file>
```

----

### Annuler des modifications
Afin de faire passer des fichiers du statut modified à unmodified
```bash
git checkout -- <file>
```

