# Task 00

## Prérequis pexp

On apprend ici comment suivre la piscine.

- A prendre les exercices dans le bon ordre
- Et à utiliser les `scripts` de test

<br/>

---

<br/>

## I) Répo git

La première étape est de cloner le répo pexp

```sh
git clone git@github.com:thai-mdr/psce.git
```

<br/>

---

<br/>

## II) Comprendre l'arborescence

**Aucun** fichier n'est à `ajouter` / `modifier` / `suprimer` dans ce répo.

L'utilisation "normale" nécessite simplement

- De lire les consignes "`(PEXP|DAYxx|TASKxx).md`" sur un `navigateur` ou `editeur` type vscode
```
pexp/PEXP.md                    <-- Introduction à pexp

pexp/day00/DAY00.md             <-- Introduction au day00

pexp/day00/task00/TASK00.md     <-- Consignes de la task00 du day00

```

- Et de lancer les tests via le `terminale`
```
~/pexp/run.sh                  <-- Lance tout les tests

~/pexp/day00/run.sh            <-- Lance tout les tests du day00

~/pexp/day00/task00/run.sh     <-- Lance tout les tests de la task00 du day00

OU en relatif

../pexp/run.sh

```

<br/>

---

<br/>

## III) Résoudre les tâches

Il est fortement conseillé de créer un dossier à part pour résoudre les tâches.

Cet autre dossier peut être un répo `git`.

De manière générale les tâches vous demandent d'ajouter de nouvelles routes à une app qui se contruit au fur et à mesure.

En passant `à la task` / `au day` suivant ne suprimez pas le travail réalisé jusque là.  
Les tests des jours précédents doivent toujours être validés.

<br/>

---

<br/>

## IV) Lancer les tests

Après avoir terminé une task pour lancer un test il faudra simplement lancer le serveur puis lancer le/les scripts de tests dans un autre terminale

```zsh
T1> PORT=3000 yarn start
```

```zsh
T2> ~/pexp/day00/task00/run.sh    <-- test la task terminée
T2> ~/pexp/day00/run.sh           <-- test le day entier
T2> ~/pexp/run.sh                 <-- vérifie que les tests des day précédents passent toujours
```

Pour cette TASK00 la seule chose à valider sera de lancer le script de test.  
Et voici ce que l'on devrait voir. (le path peut varier)

![task00](./task00_run.png)


<br/>

---

<br/>

[↑ Haut de page](#task-00)

|                                   |                                   |                                   |
| :---                              |               :---:               |                              ---: |
| [← Day00](../DAY00.md)            | [⏎ Day00](../DAY00.md)            | [Task01 →](./TASK01.md)   |
