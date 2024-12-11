# test-web
Ce repository, permet de pull un site web de test rapidement.


Dans votre dossier dédié au projet, installer un serveur WEB </br>
Installer docker puis entrer le config du docker compose comme suit
```
services:
  apache2:
    image: ubuntu/apache2:latest
    container_name: apache2_server
    ports:
      - "8080:80" # Mappe le port 80 du conteneur au port 8080 de l'hôte
    volumes:
      - ./html:/var/www/html # Monte un répertoire local pour les fichiers web
    restart: unless-stopped # Redémarre automatiquement le conteneur sauf en cas d'arrêt manuel
```

Installation de GIT + Ajout des fichier du site
```
sudo apt install git
sudo git init
sudo git pull https://github.com/Paul-CHAVANON/test-web.git
```

Afficher le sereur WEB = <IP DU SERVEUR>:8080
