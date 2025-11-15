# Guide de publication sur PyPI

Ce guide vous explique comment publier `selenium-ui-test-tool` sur PyPI (Python Package Index).

## 📋 Prérequis

### 1. Créer un compte PyPI

1. **Compte sur PyPI** : Allez sur [pypi.org](https://pypi.org) et créez un compte
2. **Compte sur TestPyPI** (recommandé pour tester) : Allez sur [test.pypi.org](https://test.pypi.org) et créez un compte

> **Note** : Utilisez des comptes différents ou des noms d'utilisateur différents pour PyPI et TestPyPI

### 2. Installer les outils nécessaires

```bash
pip install --upgrade build twine
```

- `build` : Pour construire les distributions (wheel et source)
- `twine` : Pour uploader sur PyPI de manière sécurisée

### 3. Générer les tokens API (recommandé)

Au lieu d'utiliser votre mot de passe, utilisez des tokens API :

1. Allez sur [pypi.org/manage/account/](https://pypi.org/manage/account/)
2. Section "API tokens"
3. Créez un nouveau token avec le scope "Entire account" ou "Project: selenium-ui-test-tool"
4. Copiez le token (il ne sera affiché qu'une seule fois !)

## 🚀 Étapes de publication

### Étape 1 : Vérifier le package

Avant de publier, vérifiez que tout est correct :

```bash
# Vérifier que le package peut être construit
python -m build

# Vérifier les métadonnées
twine check dist/*
```

### Étape 2 : Tester sur TestPyPI (recommandé)

Testez d'abord sur TestPyPI pour vérifier que tout fonctionne :

```bash
# Construire le package
python -m build

# Uploader sur TestPyPI
twine upload --repository testpypi dist/*

# Vous serez invité à entrer :
# - Username: __token__
# - Password: votre_token_api_testpypi
```

Ensuite, testez l'installation depuis TestPyPI :

```bash
pip install --index-url https://test.pypi.org/simple/ selenium-ui-test-tool
```

### Étape 3 : Publier sur PyPI

Une fois que tout fonctionne sur TestPyPI :

```bash
# Construire le package (si pas déjà fait)
python -m build

# Uploader sur PyPI
twine upload dist/*

# Vous serez invité à entrer :
# - Username: __token__
# - Password: votre_token_api_pypi
```

### Étape 4 : Vérifier la publication

1. Allez sur [pypi.org/project/selenium-ui-test-tool](https://pypi.org/project/selenium-ui-test-tool)
2. Vérifiez que votre package apparaît
3. Testez l'installation :

```bash
pip install selenium-ui-test-tool
```

## 📝 Mise à jour d'une version existante

Pour publier une nouvelle version :

1. **Mettre à jour la version** dans :
   - `pyproject.toml` : `version = "1.0.1"`
   - `setup.py` : `version="1.0.1"`
   - `selenium_ui_test_tool/__init__.py` : `__version__ = "1.0.1"`

2. **Mettre à jour le CHANGELOG.md**

3. **Construire et publier** :

```bash
# Nettoyer les anciennes distributions
rm -rf dist/ build/ *.egg-info

# Construire
python -m build

# Publier
twine upload dist/*
```

## 🔐 Configuration sécurisée avec .pypirc (optionnel)

Vous pouvez créer un fichier `~/.pypirc` pour éviter de taper les credentials à chaque fois :

```ini
[distutils]
index-servers =
    pypi
    testpypi

[pypi]
username = __token__
password = votre_token_api_pypi

[testpypi]
repository = https://test.pypi.org/legacy/
username = __token__
password = votre_token_api_testpypi
```

> **⚠️ Attention** : Ne commitez JAMAIS ce fichier dans Git ! Il est déjà dans `.gitignore`

Ensuite, vous pouvez simplement utiliser :

```bash
twine upload --repository testpypi dist/*  # Pour TestPyPI
twine upload dist/*  # Pour PyPI
```

## 📦 Structure des fichiers de distribution

Après `python -m build`, vous obtiendrez dans `dist/` :

- `selenium_ui_test_tool-1.0.0.tar.gz` : Distribution source
- `selenium_ui_test_tool-1.0.0-py3-none-any.whl` : Distribution wheel (binaire)

Les deux seront uploadés sur PyPI.

## ✅ Checklist avant publication

- [ ] Version mise à jour dans tous les fichiers
- [ ] README.md complet et à jour
- [ ] CHANGELOG.md mis à jour
- [ ] Tous les tests passent
- [ ] Le package se construit sans erreur (`python -m build`)
- [ ] Les métadonnées sont correctes (`twine check dist/*`)
- [ ] Testé sur TestPyPI
- [ ] Documentation vérifiée

## 🐛 Dépannage

### Erreur : "File already exists"

Cela signifie que la version existe déjà sur PyPI. Vous devez incrémenter le numéro de version.

### Erreur : "Invalid distribution"

Vérifiez que :
- Le nom du package est correct (pas de caractères spéciaux)
- Les métadonnées dans `pyproject.toml` sont valides
- Utilisez `twine check dist/*` pour vérifier

### Erreur d'authentification

- Vérifiez que vous utilisez `__token__` comme username
- Vérifiez que le token API est correct
- Assurez-vous que le token n'a pas expiré

## 📚 Ressources

- [Documentation PyPI](https://packaging.python.org/en/latest/guides/distributing-packages-using-setuptools/)
- [Guide Twine](https://twine.readthedocs.io/)
- [TestPyPI](https://test.pypi.org/)

## 🎉 Après la publication

Une fois publié, votre package sera disponible via :

```bash
pip install selenium-ui-test-tool
```

Les utilisateurs pourront l'installer et l'utiliser dans leurs projets !

