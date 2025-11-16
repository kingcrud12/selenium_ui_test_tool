# Guide de déploiement sur GitHub Pages

## Méthode 1 : Déploiement automatique (recommandé)

1. **Créer un repository GitHub** (si ce n'est pas déjà fait)
   ```bash
   git init
   git add .
   git commit -m "Initial commit"
   git remote add origin https://github.com/votre-username/selenium-ui-test-tool.git
   git push -u origin main
   ```

2. **Activer GitHub Pages**
   - Allez dans Settings → Pages
   - Source : "Deploy from a branch"
   - Branch : `main`
   - Folder : `/docs`
   - Cliquez sur "Save"

3. **Votre site sera disponible à :**
   ```
   https://votre-username.github.io/selenium-ui-test-tool/
   ```

## Méthode 2 : Utiliser GitHub Actions

Créez un fichier `.github/workflows/pages.yml` :

```yaml
name: Deploy to GitHub Pages

on:
  push:
    branches:
      - main

permissions:
  contents: read
  pages: write
  id-token: write

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - name: Setup Pages
        uses: actions/configure-pages@v2
      - name: Upload artifact
        uses: actions/upload-pages-artifact@v1
        with:
          path: './docs'
      - name: Deploy to GitHub Pages
        id: deployment
        uses: actions/deploy-pages@v1
```

## Vérification

Après le déploiement, vérifiez que votre site est accessible :
- URL : `https://votre-username.github.io/selenium-ui-test-tool/`
- Le tutoriel devrait s'afficher correctement

## Mise à jour

Pour mettre à jour la documentation :
1. Modifiez les fichiers dans `docs/`
2. Committez et pushez les changements
3. GitHub Pages se mettra à jour automatiquement (peut prendre quelques minutes)

