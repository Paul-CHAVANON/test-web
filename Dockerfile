# Utilise une image légère de Nginx
FROM nginx:alpine

# Supprime le contenu par défaut de Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copie tous les fichiers du dépôt vers le dossier HTML de Nginx
COPY . /usr/share/nginx/html

# Expose le port 80 pour le trafic web
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
