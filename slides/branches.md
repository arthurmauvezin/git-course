## Gestion des branches

----

### Fonctionnement des branches: trees
<img src="images/commit-and-tree.png" style="background:none; border:none; box-shadow:none;"/>

----

### Fonctionnement des branches: parents
<img src="images/commits-and-parents.png" style="background:none; border:none; box-shadow:none;"/>

----

### Fonctionnement des branches: pointeurs
<img src="images/branch-and-history.png" style="background:none; border:none; box-shadow:none;"/>

----

### Fonctionnement des branches: nommage

* la branche par défaut est appelée master
* un pointeur spécial appelé HEAD pointe sur la branche courante

----

### Lister les branches
```bash
git branch
```
Option fréquentes:
* `-a`: all
* `-v`: last commit on each branch

----

### Changer de branche
```bash
git checkout <branch_name>
```

----

### Créer une nouvelle branche
```bash
git branch <branch_name>
```
Pour créer une branche et pointer dessus
```bash
git checkout -b <branch_name>
```

----

### Supprimer une branche
```bash
git branch -d <branch_name>
```
* Pour forcer le delete:
```bash
git branch -D <branch_name>
```

----

### Merger une branche
```bash
git merge <branch_to_merge_from>
```
Deux cas sont possibles:
* Fast-forward: le code à merger est une évolution directe, pas de conflits possibles
* three-way merge: les branches à merger ont évoluées chacune de leurs cotés

----

### Gérer les conflits
Parfois les three-way merges rentrent en conflits. Il faut alors
* éditer les fichiers pointés par le conflit,
* choisir le code à garder,
* puis commiter les nouveaux changements.

----

### Remote Branches (1)
<img src="images/remote-branches-1.png" style="border:none; box-shadow:none;"/>

----

### Remote Branches (2)
<img src="images/remote-branches-2.png" style="background:none; border:none; box-shadow:none;"/>

----

### Remote Branches (3)
<img src="images/remote-branches-3.png" style="background:none; border:none; box-shadow:none;"/>

----

### Afficher les branches trackées
Affiche la configuration entre les branches locales et remotes. Affiche le niveau de fraicheur de chaque branche (ahead/behind).
```bash
git branch -vv
```

----

### Supprimer une branche remote

```bash
git push <remote_name> --delete <branch_name>
```

