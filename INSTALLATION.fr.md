# Guide d'installation

## Installation en mode développement

Pour installer la bibliothèque en mode développement (editable) :

```bash
# Cloner le repository (ou naviguer vers le dossier)
cd selenium_ui_test_tool

# Installer en mode développement
pip install -e .
```

## Installation depuis le code source

```bash
# Construire la distribution
python -m build

# Installer depuis le wheel
pip install dist/selenium_ui_test_tool-1.0.0-py3-none-any.whl
```

## Installation depuis PyPI (quand publié)

```bash
pip install selenium-ui-test-tool
```

## Vérification de l'installation

```python
# Tester l'import
from selenium_ui_test_tool import BaseTest, create_driver
print("✅ Installation réussie !")
```

## Dépendances système

### ChromeDriver

La bibliothèque utilise `webdriver-manager` pour gérer automatiquement ChromeDriver, mais vous pouvez aussi :

1. **Installer manuellement** : Téléchargez ChromeDriver depuis [chromedriver.chromium.org](https://chromedriver.chromium.org/)
2. **Via Homebrew (macOS)** : `brew install chromedriver`
3. **Via apt (Linux)** : `sudo apt-get install chromium-chromedriver`

### Chrome/Chromium

Assurez-vous d'avoir Chrome ou Chromium installé sur votre système.

## Dépannage

### Erreur : "chromedriver not found"

Solution : Définissez la variable d'environnement `CHROMEDRIVER_PATH` :

```bash
export CHROMEDRIVER_PATH=/path/to/chromedriver
```

Ou installez `webdriver-manager` :

```bash
pip install webdriver-manager
```

### Erreur : "Module not found"

Vérifiez que vous avez installé le package :

```bash
pip list | grep selenium-ui-test-tool
```

Si absent, réinstallez :

```bash
pip install -e .
```

