#!/bin/bash
#Petit script pour nettoyer tout le binz du docker-compose
#zf210701.2313

docker-compose down -v --remove-orphans
