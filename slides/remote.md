## Travailler en remote

----

### Lister les remotes
```bash
git remote -v
```

----

### Plus d'information sur les remote
```bash
git remote show <remote_name>
```

----

### Ajouter un remote repository
```bash
git remote add <remote_name> <url>
```

----

### Renommer / Supprimer un remote
```bash
git remote rename <old_remote_name> <new_remote_name>
git remote remove <remote_name>
```

----

### Synchroniser ses remotes
```bash
git fetch <remote_name>
```
> Cette opération ne fait que télécharger la version la plus à jour du repo. Le merge doit être effectué manuellement par la suite.

----

### Synchroniser et merger son repo à partir d'une remote
Télécharge les dernières modifications et tente un merge sur la branche courante
```bash
git pull <remote_name>
```

----

### Pousser ses modifications
```bash
git push <remote_name> <branch>
```
> Personne ne doit avoir poussé de modifications entre le dernier pull et le dernier push
