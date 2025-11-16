# Comment mettre à jour la page web via Git

## Étapes pour mettre à jour GitHub Pages

### 1. Vérifier l'état de Git

```bash
# Voir les fichiers modifiés
git status

# Voir les différences
git diff
```

### 2. Ajouter les fichiers modifiés

```bash
# Ajouter tous les fichiers modifiés
git add .

# Ou ajouter spécifiquement le dossier docs
git add docs/

# Ou ajouter un fichier spécifique
git add docs/index.html
```

### 3. Créer un commit

```bash
# Créer un commit avec un message descriptif
git commit -m "Mise à jour de la documentation du tutoriel"

# Ou un message plus détaillé
git commit -m "docs: Amélioration du tutoriel avec exemples TC004 réels"
```

### 4. Pousser vers GitHub

```bash
# Pousser vers la branche main
git push origin main

# Si c'est la première fois, configurer le remote
git remote add origin https://github.com/votre-username/selenium-ui-test-tool.git
git push -u origin main
```

### 5. Vérifier le déploiement

1. Allez sur votre repository GitHub
2. Vérifiez que les fichiers sont bien poussés
3. Attendez 1-2 minutes pour que GitHub Pages se mette à jour
4. Visitez votre site : `https://votre-username.github.io/selenium-ui-test-tool/`

## Workflow complet (exemple)

```bash
# 1. Se placer dans le dossier du projet
cd /Users/Hugotestas/Desktop/selenium_ui_test_tool

# 2. Vérifier les modifications
git status

# 3. Ajouter les fichiers
git add docs/

# 4. Créer un commit
git commit -m "docs: Mise à jour du tutoriel avec structure TC004"

# 5. Pousser vers GitHub
git push origin main
```

## Commandes Git utiles

### Voir l'historique des commits
```bash
git log --oneline
```

### Annuler des modifications non commitées
```bash
# Annuler les modifications d'un fichier
git checkout -- docs/index.html

# Annuler toutes les modifications
git checkout -- .
```

### Modifier le dernier commit
```bash
# Modifier le message du dernier commit
git commit --amend -m "Nouveau message"

# Ajouter des fichiers au dernier commit
git add docs/index.html
git commit --amend --no-edit
```

### Voir les différences avant de commit
```bash
# Différence pour un fichier
git diff docs/index.html

# Différence pour tous les fichiers
git diff
```

## Automatisation avec un script

Créez un fichier `update-docs.sh` :

```bash
#!/bin/bash
echo "📝 Mise à jour de la documentation..."

git add docs/
git commit -m "docs: Mise à jour de la documentation"
git push origin main

echo "✅ Documentation mise à jour !"
echo "🌐 Votre site sera disponible dans 1-2 minutes sur GitHub Pages"
```

Rendez-le exécutable :
```bash
chmod +x update-docs.sh
```

Utilisez-le ensuite :
```bash
./update-docs.sh
```

## Dépannage

### Erreur : "remote origin already exists"
```bash
# Vérifier le remote actuel
git remote -v

# Modifier le remote si nécessaire
git remote set-url origin https://github.com/votre-username/selenium-ui-test-tool.git
```

### Erreur : "Your branch is ahead of origin"
```bash
# Pousser les commits locaux
git push origin main
```

### Erreur : "Updates were rejected"
```bash
# Récupérer les dernières modifications
git pull origin main

# Résoudre les conflits si nécessaire, puis
git push origin main
```

## Vérification après push

1. **Sur GitHub** : Allez dans votre repository → onglet "Commits"
2. **Vérifiez** : Votre commit apparaît dans l'historique
3. **GitHub Pages** : Settings → Pages → Vérifiez que la source est bien configurée
4. **Attendez** : 1-2 minutes pour la propagation
5. **Testez** : Visitez votre site et actualisez la page (Ctrl+F5 ou Cmd+Shift+R)

