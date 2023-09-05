# odoo-training
Ce projet consiste à builder et déployer l'application Odoo dans un conteneur Docker afin de l'exploiter et de l'administrer
- Le fichier Readme décrit toutes les actions réalisées.

# Infos sur le réalisateur
Nom  & Prénoms    : GBENOU Kossi

LinkedIn : https://www.linkedin.com/in/gkossi/

## Les besoins
Mon travail consiste à :
1) Utiliser mon environnement de travail local
2) Créer le projet sur github
3) Cloner le projet dans mon environnement en local
4) Créer une image docker d'Odoo
5) Lancer le conteneur et y accéder pour l'exploiter et l'administrer

## Mon plan
Je dois créer un projet sur github nommé ***odoo-training*** et le cloner en local. Ce projet va contenir plusieurs répertoires et fichiers.
- Installer Docker Engine et Docker Compose
- Mettre en place le Dockerfile pour Odoo
- Mettre en place le Doker Compose
- Lancer Oddo avec l'aide d'un script pour les routines

## QUELQUES INDICATIONS SUR LE PROJET
Le répertoire du projet contient :
- Un dossier ***config*** contenant le fichier ***odoo.conf***. Ce fichier va contenir les paramètres permettant d'indiquer le chemin vers les différents modules à prendre en compte par Odoo lorsqu'on le lance
- Un dossier ***costum_addons** qui va rassembler tous les modules complémentaires que nous aurons à créer nous-meme
- Un fichier ***.env*** va contenir les variables d'environnement à utiliser.
- Un fichier ***Dockerfile*** va contenir les paramètres servant au build de notre image Odoo
- Un fichier ***docker-compose.yml*** va contenir les paramètres servant à l'orchestration de plusieurs services (la couche métier, la couche présentation et la couche base de données)
- Un fichier ***run.sh*** va contenir les instructions et méthodes nécessaires servant de script pour les routines