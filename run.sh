#!/bin/sh

#On va définir le chemin vers le fichier docker-compose à utiliser
export COMPOSE_FILE_PATH="${PWD}/docker-compose.yml"

#On va ensuite définir plusieurs fonctions qui vont permettre de réaliser des actions

#Fonction permettant de lancer docker compose et de builder tout ce qu'il ya à l'intérieur
start() {
    docker compose -f "$COMPOSE_FILE_PATH" up --build -d
}

#Fonction permettant d'arreter docker compose
down() {
    docker compose -f "$COMPOSE_FILE_PATH" down
}

#Fonction permettant de consulter les logs
tail() {
    docker compose -f "$COMPOSE_FILE_PATH" logs -f
}

#Fonction permettant de nétoyer les données
purge() {
    docker volume rm -f data
    docker volume rm -f db
}

case "$1" in
  build_start)
    git pull
    start
    tail
    ;;
  start)
    start
    tail
    ;;
  stop)
    down
    ;;
  purge)
    down
    purge
    ;;
  *)
    echo "Usage: $0 {start|stop|purge}"
esac
