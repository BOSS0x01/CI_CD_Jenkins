# BDCC Web (Static)

Petit projet static qui affiche "Welcome BDCC" et qui peut être servi avec Nginx dans un conteneur Docker.

## Fichiers

- `index.html` : Page web affichant "Welcome BDCC".
- `Dockerfile` : Image basée sur `nginx` qui copie `index.html` dans le répertoire web de nginx.

## Build et exécution (PowerShell)

Ouvrez un terminal PowerShell dans le dossier `bdcc-web` puis exécutez :

```powershell
docker build -t bdcc-web .
docker run --rm -p 8080:80 bdcc-web
```

Ensuite ouvrez http://localhost:8080 dans votre navigateur. Le conteneur sert `index.html` via nginx sur le port 80, mappé ici sur le port 8080 de la machine hôte.

## Notes

- Le Dockerfile utilise l'image `nginx:stable-alpine` pour garder l'image légère.
- Si vous n'avez pas Docker installé, installez Docker Desktop pour Windows et activez le moteur Docker avant d'exécuter les commandes ci-dessus.
