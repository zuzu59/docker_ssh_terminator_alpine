# docker_ssh_terminator_alpine
Petit container Docker pour faire tourner un terminal Terminator et l'utiliser en ssh, quand on ne peut pas avoir de Terminator sur sa machine

zf210701.2354

## Buts
Souvent quand on travaille avec plusieurs serveurs ou *nodes*, on aimerait exécuter la même commande sur plusieurs machines en même temps. Le terminal **Terminator** le permet de le faire très facilement.

Le problème, c'est que sur MAC OS, il n'existe PAS !

Pour cela, il y a ce petit container Docker qui est une sorte de machine Linux avec un Terminator d'installé.

On accède, de manière transparente via *ssh* à ce container et généralement tous nos *credentials* et *configurations* ssh devraient nous *suivre* avec.


## Prérequis
Il faut que sur sa machine tourne un serveur X11 comme XQuartz par exemple !

## Utilisation
Simplement faire:
```
./start.sh
```
