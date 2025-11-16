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
   - Allez dans **Settings** → **Pages**
   - **Source** : "Deploy from a branch"
   - **Branch** : `main`
   - **Folder** : `/docs`
   - **Custom domain** : ⚠️ **LAISSEZ VIDE** (sauf si vous avez un vrai domaine)
   - Cliquez sur **Save**

3. **Votre site sera disponible à :**
   ```
   https://votre-username.github.io/selenium-ui-test-tool/
   ```

### ⚠️ Important : Configuration du domaine personnalisé

**Ne configurez PAS de domaine personnalisé** sauf si vous possédez un vrai nom de domaine (ex: `example.com`).

- ❌ **INCORRECT** : `selenium-ui-tool` (nom simple)
- ✅ **CORRECT** : `selenium-ui-tool.com` ou `www.selenium-ui-tool.com` (domaine complet)

Si vous avez une erreur de domaine personnalisé :
1. Allez dans **Settings** → **Pages**
2. **Supprimez** le champ "Custom domain" (laissez-le vide)
3. Cliquez sur **Save**
4. Votre site fonctionnera avec l'URL GitHub Pages standard

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

