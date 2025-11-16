# Structure du projet

## Vue d'ensemble

Ce projet est maintenant une bibliothèque Python installable pour faciliter les tests UI automatisés avec Selenium.

## Fichiers principaux

### Configuration
- `pyproject.toml` - Configuration moderne du package (PEP 518)
- `setup.py` - Script d'installation classique (compatibilité)
- `MANIFEST.in` - Fichiers à inclure dans la distribution
- `requirements.txt` - Dépendances du projet

### Documentation
- `README.md` - Documentation principale avec exemples
- `INSTALLATION.md` - Guide d'installation détaillé
- `CHANGELOG.md` - Historique des versions
- `CONTRIBUTING.md` - Guide pour les contributeurs
- `MIGRATION.md` - Guide de migration depuis l'ancienne structure
- `LICENSE` - Licence MIT

### Code source
- `selenium_ui_test_tool/` - Package principal contenant tous les modules
  - `__init__.py` - Point d'entrée du package, expose l'API publique
  - `base_test/` - Classe BaseTest pour exécuter des tests
  - `driver_builder/` - Construction et configuration du WebDriver
  - `wait_element/` - Utilitaires d'attente d'éléments
  - `click_element/` - Utilitaire de clic avancé avec messages personnalisés
  - `config_actions/` - Configuration et exécution d'actions
  - `get_env_var/` - Gestion des variables d'environnement
  - `get_url/` - Navigation vers des URLs

### Exemples
- `examples/` - Exemples d'utilisation de la bibliothèque
  - `example_usage.py` - Exemples complets d'utilisation

### Configuration
- `env.example` - Exemple de fichier de variables d'environnement
- `.gitignore` - Fichiers à ignorer par Git

## Installation

```bash
# Mode développement
pip install -e .

# Depuis PyPI (quand publié)
pip install selenium-ui-test-tool
```

## Utilisation

```python
from selenium_ui_test_tool import BaseTest, create_driver, wait_for_element

# Utiliser BaseTest
test = BaseTest(
    test_function=my_test_function,
    success_message="✅ Test réussi",
    failure_message="❌ Test échoué",
    url="https://example.com"
)
test.run()

# Ou utiliser les utilitaires directement
driver = create_driver(headless=False)
element = wait_for_element(driver, By.ID, "my-element")
```

## API publique

Tous les éléments suivants sont disponibles via `from selenium_ui_test_tool import ...` :

- `BaseTest` - Classe principale pour les tests
- `create_driver` - Créer un driver Chrome
- `get_url` - Naviguer vers une URL
- `wait_for_element` - Attendre un élément
- `click_element` - Cliquer sur un élément avec fonctionnalités avancées
- `configure_actions` - Configurer et exécuter des actions
- `get_env_var` - Récupérer une variable d'environnement

## Développement

Pour contribuer au projet :

1. Fork le repository
2. Créez une branche pour votre fonctionnalité
3. Développez et testez
4. Soumettez une Pull Request

Voir `CONTRIBUTING.md` pour plus de détails.

