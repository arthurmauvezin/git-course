## Gitflow
### Un workflow de gestion de branches Git

----

### Gitflow exemple
<img src="images/gitflow.jpg" style="background:none; border:none; box-shadow:none;"/>

----

### Branche: Master

* Représente la branche de production
* Branche infinie
* C'est la branche la plus stable
* C'est celle qu'on expose aux autres équipes

----

### Branche: develop

* Branche d'intégration des développements
* Branche infinie
* Nécessite d'être stable car c'est sur cette branche que l'intégration continue tourne

----

### Branche: feature/xxx

* Branche de développement d'une feature
* Sa durée de vie doit être courte
* Son but est de compartimenter les devs
* Elle part de la branch develop pour revenir dans develop

----

### Branche: bugfix/xxx

* Branche de correction d'une anomalie
* Sa durée de vie doit être courte
* Elle peut partir de n'importe quelle branche mais doit être mergée dans la même branche à son terme


---- 


### Branche: release/xxx

* Branche de compartimentation en vue de la validation d'une nouvelle release par une équipe externe
* Sa durée de vie doit être courte
* Cette branche par de develop et est mergée dans master

----

### Branche: support/xxx

* Branche de support d'une version legacy de l'application
* Cette branche continue à vivre aussi longtemps que la version en question est en production
* Les changements apportés sur cette branche doivent être cherry-pickés la plupart du temps

----

### Intégration continue en fonction des branches

* En fonction du type de branche, on va lancer différentes actions via le serveur d'intégration continue.
* Sur develop, on lancera un scan d'analyse de code source, build, test, run, ...
* À l'inverse, sur les branches feature/ on s'appuiera principalement sur build et test

