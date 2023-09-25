# Utilise la même image de base que pour le server pour la cohérence
FROM node:lts-alpine

# Crée le répertoire de travail dans le conteneur
RUN mkdir /app
WORKDIR /app

# Copie les fichiers de dépendances package.json et package-lock.json
COPY package*.json ./

# Installe les dépendances
RUN npm i

# Copie les dossiers src et public dans le conteneur
COPY src src
COPY public public

# Commande pour démarrer l'application
CMD ["npm", "start"]

