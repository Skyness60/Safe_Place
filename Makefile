# Makefile simple pour SafePlace (sans Docker)

# Variables
APP_DIR = app/safezone

# Commandes principales
dev: ## Démarre l'application en développement
	cd $(APP_DIR) && npm start

install: ## Installe les dépendances
	cd $(APP_DIR) && npm install

build: ## Construit l'application
	cd $(APP_DIR) && npx expo build

start: ## Démarre l'application Expo
	cd $(APP_DIR) && npx expo start

tunnel: ## Démarre avec tunnel (pour mobile distant)
	cd $(APP_DIR) && npx expo start --tunnel

lan: ## Démarre en mode LAN (pour mobile local)
	cd $(APP_DIR) && npx expo start --lan

web: ## Démarre en mode web
	cd $(APP_DIR) && npx expo start --web

clean: ## Nettoie et réinstalle les dépendances
	cd $(APP_DIR) && rm -rf node_modules package-lock.json
	cd $(APP_DIR) && npm install

reset: ## Remet à zéro les dépendances Expo
	cd $(APP_DIR) && npx expo install --fix

doctor: ## Vérifie la configuration Expo
	cd $(APP_DIR) && npx expo doctor

help: ## Affiche cette aide
	@echo "Commandes disponibles:"
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "  %-10s %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.PHONY: dev install build start tunnel lan web clean reset doctor help
