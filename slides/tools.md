## Git tools

----

### Short SHA-1

Afficher les logs avec les hash de commit courts
```bash
git log --abbrev-commit
```

---

### Afficher le reflog

Journal des changements locaux réalisés sur le repo.
```bash
git reflog
```

---

### Sélectionner le commit parent d'un commit

```bash
git log HEAD~
git log HEAD~~
git log HEAD~4
```

---

### Sélectionner une plage de commits

```bash
git log <from>..<to>
git log master..HEAD
```

---

### Stage une partie d'un fichier

On peut utiliser le add interactive pour ajouter uniquement une partie d'une fichier à la Staging Area
```bash
git add -i
# OR
git add -p
```
> Utiliser les commandes patch

----

### Mettre de coté son travail

```bash
git stash
git stash push
```

----

### Lister les stash

```bash
git stash list
```

----

### Récupérer son travail

```bash
git stash apply
# En gardant les fichiers déjà dans la Staging Area
git stash apply --index
```

----

### Supprimer un stash

```bash
git stash drop <stash_id>
```

----

### Nettoyer votre Working Directory

```bash
git clean -f -d
```

----

### Rebase interactif

```bash
git rebase -i <from>..<to>
```
* Réecrire les messages de commit
* Squasher plusieurs commits en un

