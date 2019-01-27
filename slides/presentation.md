## Présentation de Git

----

### Utilisation des VCS

* VCS: Version Control System
* Permet de naviger à travers un historique de commit
* Permet le travail sur des branches différentes

----

### Le VCS le plus utilisé: Git

* Crée en 2005 par Linus Torvalds
* Pour contenir les développements du noyau Linux
* Très populaire dans la communauté Opensource 

----

### Centralisé vs ...
<img src="images/centralized.png" style="background:none; border:none; box-shadow:none;"/>

----

### Distribué
<img src="images/distributed.png" style="background:none; border:none; box-shadow:none;"/>

----

### Tout est snapshot: Avant
<img src="images/deltas.png" style="background:none; border:none; box-shadow:none;"/>

----

### Tout est snapshot: Après
<img src="images/snapshots.png" style="background:none; border:none; box-shadow:none;"/>

----

### .git
<img src="images/object-graph.png" style="background:none; border:none; box-shadow:none;"/>

---

### .git

* Git possède un système de check d'intégrité (basé sur un checksum SHA-1)
* Ce sont ces checksum appelé hash qui sont à la base de toutes les operations Git
* Presque toutes les actions ne font qu'ajouter des données à la base de données Git

----

### Les trois états du projet Git

* committed : le fichier a été stoqué dans la base de données Git
* modified : le fichier a été modifié mais n'a pas encore été commité 
* staged : le fichier modified est enregistré dans sa version actuelle pour faire parti du prochain commit

----

### Les trois états du projet Git
<img src="images/areas.png" style="background:none; border:none; box-shadow:none;"/>

----

### Les trois états du projet Git

* Git Directory : base de données Git pour le projet
* Working Directory : un checkout d'une version du projet
* Staging Area (Index) : un fichier qui enregistre quel modifications feront partis du prochain commit

---

### Installation et configuration
* [Installation](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
* [Configuration](https://git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup)
> Attention: La partie configuration est obligatoire pour réaliser les TPs qui vont suivre.

----

### Un peu de doc

* [Official site](https://git-scm.com/book/en/v2)
* [Step by step tutorial](https://www.atlassian.com/git/tutorials/what-is-git)
* Command line help
```bash
git help <verb>
man git-<verb>
git <verb> -h`
```

----

### Serveurs Git connus

* Github
* Gitlab
* Bitbucket

