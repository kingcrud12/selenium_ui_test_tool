# Dépannage : La page web ne se met pas à jour

## Vérifications à faire

### 1. Vérifier la configuration GitHub Pages

1. Allez sur votre repository : https://github.com/kingcrud12/selenium_ui_test_tool
2. Cliquez sur **Settings** (en haut à droite)
3. Dans le menu de gauche, cliquez sur **Pages**
4. Vérifiez que :
   - **Source** : "Deploy from a branch"
   - **Branch** : `main`
   - **Folder** : `/docs` (⚠️ IMPORTANT : doit être `/docs`)
   - Cliquez sur **Save** si vous avez modifié quelque chose

### 2. Vérifier que les fichiers sont bien sur GitHub

1. Allez sur : https://github.com/kingcrud12/selenium_ui_test_tool/tree/main/docs
2. Vérifiez que `index.html` est bien présent
3. Cliquez sur `index.html` pour voir son contenu
4. Vérifiez la date de dernière modification

### 3. Vérifier le statut du déploiement

1. Allez dans **Settings** → **Pages**
2. Regardez la section "Build and deployment"
3. Vérifiez s'il y a un message d'erreur ou un statut de build

### 4. Forcer un nouveau déploiement

Si GitHub Pages ne se met pas à jour automatiquement :

1. Allez dans **Settings** → **Pages**
2. Changez temporairement le **Folder** de `/docs` à `/root`
3. Cliquez sur **Save**
4. Attendez quelques secondes
5. Remettez le **Folder** à `/docs`
6. Cliquez sur **Save** à nouveau

Cela force GitHub Pages à redéployer.

### 5. Vider le cache du navigateur

Le navigateur peut avoir mis en cache l'ancienne version :

- **Chrome/Edge** : `Ctrl+Shift+R` (Windows) ou `Cmd+Shift+R` (Mac)
- **Firefox** : `Ctrl+F5` (Windows) ou `Cmd+Shift+R` (Mac)
- **Safari** : `Cmd+Option+R`

Ou ouvrez en navigation privée pour tester.

### 6. Vérifier l'URL correcte

Votre site devrait être accessible à :
```
https://kingcrud12.github.io/selenium_ui_test_tool/
```

⚠️ Notez que l'URL utilise `selenium_ui_test_tool` (avec underscores), pas `selenium-ui-test-tool`.

### 7. Attendre le déploiement

GitHub Pages peut prendre jusqu'à 10 minutes pour se mettre à jour après un push.

Pour vérifier le statut :
1. Allez dans l'onglet **Actions** de votre repository
2. Cherchez les workflows "pages build and deployment"
3. Vérifiez s'il y a des erreurs

## Solutions rapides

### Solution 1 : Vérifier et reconfigurer GitHub Pages

```bash
# 1. Vérifiez que vos fichiers sont bien commités
git status

# 2. Si tout est commité, faites un petit changement pour forcer un nouveau déploiement
echo "# Updated" >> docs/index.html
git add docs/index.html
git commit -m "Force GitHub Pages update"
git push origin main
```

### Solution 2 : Vérifier le fichier .nojekyll

Assurez-vous que le fichier `.nojekyll` existe dans `docs/` :

```bash
ls -la docs/.nojekyll
```

S'il n'existe pas, créez-le :

```bash
touch docs/.nojekyll
git add docs/.nojekyll
git commit -m "Add .nojekyll for GitHub Pages"
git push origin main
```

### Solution 3 : Vérifier les permissions

Assurez-vous que GitHub Pages est activé :
1. **Settings** → **Pages**
2. Vérifiez que "GitHub Pages" est activé
3. Si ce n'est pas le cas, activez-le et configurez la source

## Vérification finale

1. ✅ Les fichiers sont sur GitHub dans `docs/`
2. ✅ GitHub Pages est configuré avec source `/docs`
3. ✅ Le cache du navigateur est vidé
4. ✅ Vous avez attendu 5-10 minutes après le dernier push
5. ✅ Vous utilisez la bonne URL : `https://kingcrud12.github.io/selenium_ui_test_tool/`

Si tout cela est vérifié et que ça ne fonctionne toujours pas, il peut y avoir un problème avec le contenu HTML. Vérifiez les erreurs dans la console du navigateur (F12).

