# 1. Image de base utilisant Node.js 18
FROM node:18-alpine

# 2. Définir le répertoire de travail dans le conteneur [cite: 24]
WORKDIR /app

# 3. Copier les fichiers de dépendances
COPY package*.json ./

# 4. Installer les dépendances
RUN npm install

# 5. Copier le reste du code source vers le répertoire de travail [cite: 26]
COPY . .

# 6. Exposer le port (8080 est standard pour cet exercice) [cite: 28, 34]
EXPOSE 8080

# 7. Commande pour lancer l'application [cite: 30, 35]
CMD ["node", "server.js"]
