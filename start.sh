#!/bin/bash
#Petit script pour démarrer tout le binz
#zf210701.2319, zf211125.0905

#pour installer Docker et Docker compose sur une machine Ubuntu c'est ici:
#https://github.com/zuzu59/docker_demo

cat ~/.ssh/*.pub > authorized_keys

docker-compose up -d

# ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -X  -A -o SendEnv="GIT*" root@localhost -p 22222


# zf211125.0742, J'ai dû ajouter l'option -Y pour 'annuler' l'échec de l'authentification X11. Je ne sais pas pourquoi, cela ne fonctionne plus sur mon machine
# https://serverfault.com/questions/273847/what-does-warning-untrusted-x11-forwarding-setup-failed-xauth-key-data-not-ge
ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -X -Y -A -o SendEnv="GIT*" root@localhost -p 22222

docker rm -f alpine_ssh
