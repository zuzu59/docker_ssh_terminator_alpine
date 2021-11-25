#!/bin/bash
#Petit script pour nettoyer tout le binz du docker-compose
#zf211125.0905

docker-compose down -v --remove-orphans
docker image rm zalpine:latest
