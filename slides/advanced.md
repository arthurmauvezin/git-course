## Fonctions avancées

----

### Initialiser un repository Git dans un repertoire existant
```bash
git init
```

----

### Afficher les author des chngements d'un fichier
```bash
git blame <file_name>
```

----

### Ajouter des modifications au dernier commit
```bash
git commit --amend
```
> Attention: Toute réecriture d'historique est à éviter sur les branches principales

----

### Lister les tags
```bash
git tag
```
Pour lister les tags commençant par v1 par exemple:
```bash
git tag -l "v1*"
```

----

### Créer un tag
* Annotated tags: tag complet comportant un autheur, un mail, une date, un message, ...
```bash
git tag -a <tag_name> -m "<tag_message>"
```
* lightweight tag: un poiteur simple sur un commit précis
```bash
git tag <tag_name>
```

----

### Afficher les détails un tag
```bash
git show <tag_name>
```

----

### Pousser ses tags 
```bash
git push <tag_name>
git push --tags
```

----

### Supprimer un tag
```bash
git tag -d <tag_name>
```

----

### Rebase (1)
<img src="images/basic-rebase-1.png" style="background:none; border:none; box-shadow:none;"/>

----

### Rebase (2)
<img src="images/basic-rebase-3.png" style="background:none; border:none; box-shadow:none;"/>

----

### Rebase (3)
<img src="images/basic-rebase-4.png" style="background:none; border:none; box-shadow:none;"/>

----

### Rebase une branche

```bash
git checkout <branch_to_rebase>
git rebase <branch_to_rebase_from>
```

----

### Rebase: Avantages

* Historique propre et facile à analyser
* Simplifie les merges avec des projets externes (forks)

----

### Rebase: Inconvénients

* Ne jamais rebase d'une branche utilisée par quelqu'un d'autre

