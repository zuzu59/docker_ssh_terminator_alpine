#!/bin/bash
#Petit script pour démarrer tout le binz
#zf210701.2319

#pour installer Docker et Docker compose sur une machine Ubuntu c'est ici:
#https://github.com/zuzu59/docker_demo

cat ~/.ssh/*.pub > authorized_keys

docker-compose up -d

ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -X  -A -o SendEnv="GIT*" root@localhost -p 22222

docker rm -f alpine_ssh
