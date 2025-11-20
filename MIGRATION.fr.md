# Guide de migration

## Transformation en bibliothèque

Ce projet a été transformé en bibliothèque Python installable. Voici les changements principaux :

## Structure

### Avant
```
selenium_ui_test_tool/
├── base_test/
├── config_actions/
├── driver_builder/
├── get_env_var/
├── get_url/
└── wait_element/
```

### Après
```
selenium_ui_test_tool/
├── selenium_ui_test_tool/    # Package principal
│   ├── base_test/
│   ├── config_actions/
│   ├── driver_builder/
│   ├── get_env_var/
│   ├── get_url/
│   └── wait_element/
├── examples/                  # Exemples d'utilisation
├── pyproject.toml            # Configuration du package
├── setup.py                  # Script d'installation
└── README.md                 # Documentation
```

## Changements d'imports

### Avant
```python
from driver_builder.driver_builder import create_driver
from get_url.get_url import get_url
```

### Après
```python
from selenium_ui_test_tool import create_driver, get_url
# ou
from selenium_ui_test_tool.driver_builder.driver_builder import create_driver
```

## Installation

### Mode développement
```bash
pip install -e .
```

### Depuis PyPI (quand publié)
```bash
pip install selenium-ui-test-tool
```

## Utilisation

### Avant
```python
from base_test.base_test import BaseTest
```

### Après
```python
from selenium_ui_test_tool import BaseTest
```

## Notes

- Les anciens dossiers à la racine ont été supprimés
- Tous les développements doivent utiliser le package `selenium_ui_test_tool`
- Les imports internes ont été mis à jour pour utiliser le nom du package

