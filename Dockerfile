#Construire l'image à partir de odoo version 15
FROM odoo:15


# Définir un utilisateur root pour permettre d'exécuter certaines 
# actions nécessitant l'autorisation root
USER root

#Créer un dossier nommé costum-addons dans le répertoire /mnt/extra-addons 
#et lui donner le droit le droit d'exécution dans ce dossier là
RUN mkdir -p /mnt/extra-addons/costum-addons && chmod -R o+rX /mnt/extra-addons/costum-addons/

#Créer le contenu des modules personnalisés dans le répertoire que je viens de créer
COPY costum-addons/ /mnt/extra-addons/costum-addons/

#Revenir à l'utilisateur odoo
USER odoo