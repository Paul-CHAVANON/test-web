# Projet soumis à licence
Voir fichier LICENSE

# test-web
Ce repository, permet de pull un site web de test rapidement.

## Déploiement avec Kube
Avec le fichier site-web.yaml lancer 3 pods contenant l'image test-web
```
sudo kubectl apply -f site-web.yaml
```
Afficher le serveur WEB = <ip_serveur>:30080
## Déploiement avec Docker
Dans votre dossier dédié au projet, installer un serveur WEB </br>
Installer docker puis entrer le config du docker compose comme suit, suivre la doc sur le site de docker pour l'installation https://docs.docker.com/engine/install/ubuntu/
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
Afficher le serveur WEB = <ip_serveur>:8080
