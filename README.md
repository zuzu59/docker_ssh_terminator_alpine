# docker_ssh_terminator_alpine
Petit container Docker pour faire tourner un terminal Terminator et l'utiliser en ssh, quand on ne peut pas avoir de Terminator sur sa machine, comme sur un MAC par exemple.

zf211125.0905


## Buts
Souvent quand on travaille avec plusieurs serveurs ou *nodes*, on aimerait exécuter la même commande sur plusieurs machines en même temps. Le terminal **Terminator** le permet de le faire très facilement.

Le problème, c'est que sur MAC OS, il n'existe PAS !

Pour cela, il y a ce petit container Docker qui est une sorte de machine Linux avec un Terminator d'installé.

On accède, de manière transparente via *ssh* à ce container et généralement tous nos *credentials* et *configurations* ssh devraient nous *suivre* avec.


## Prérequis
Il faut que sur sa machine il existe un serveur X11 comme XQuartz par exemple !


## Utilisation
1. Vérifier que XQuartz est bien installé sur le MAC ?
1. Puis faire:

  ```
  ./start.sh
  ```
1. On doit alors se trouver à l'intérieur du container Docker !<br>
Pour continuer avec Terminator, bien lire ce qui est indiqué dans la console !



## Choses encore à faire !

### Installation de openshift-cli 
Il faudra encore ajouter les commandes **oc** dans l'image Docker

https://github.com/saily/openshift-cli
