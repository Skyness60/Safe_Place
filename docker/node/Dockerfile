# docker/node/Dockerfile
FROM node:20-alpine

RUN apk add --no-cache bash git curl

WORKDIR /app

# Copie uniquement package.json
COPY package.json ./

# Installe les dépendances avec npm
RUN npm install

# Copie le reste du projet
COPY . .

# Expose les ports nécessaires à Expo
EXPOSE 8081 19000 19001 19002

# Lancement du serveur Expo
CMD ["npx", "expo", "start", "--tunnel"]
