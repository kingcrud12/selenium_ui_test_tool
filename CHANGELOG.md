# Changelog

Tous les changements notables de ce projet seront documentés dans ce fichier.

Le format est basé sur [Keep a Changelog](https://keepachangelog.com/fr/1.0.0/),
et ce projet adhère à [Semantic Versioning](https://semver.org/lang/fr/).

## [1.0.1] - 2024-01-XX

### Corrigé
- Correction de la fonction `get_env_var()` pour qu'elle cherche le fichier `.env` dans le projet de l'utilisateur plutôt que dans le package installé. La fonction cherche maintenant le `.env` depuis le répertoire de travail courant et remonte les répertoires parents jusqu'à le trouver.

## [1.0.0] - 2024-01-XX

### Ajouté
- Classe `BaseTest` pour faciliter l'exécution de tests UI automatisés
- Fonction `create_driver()` pour créer et configurer un driver Chrome
- Fonction `get_url()` pour naviguer vers une URL
- Fonction `wait_for_element()` pour attendre la présence d'un élément
- Fonction `configure_actions()` pour exécuter des actions sur des éléments (scroll + click)
- Fonction `get_env_var()` pour récupérer des variables d'environnement avec gestion d'erreurs
- Support du mode headless automatique en environnement CI/CD
- Gestion automatique de ChromeDriver via webdriver-manager
- Documentation complète avec exemples d'utilisation
- Support des variables d'environnement via fichier .env

### Modifié
- Transformation du projet en bibliothèque Python installable
- Restructuration des imports pour une utilisation en package

### Documentation
- README.md complet avec exemples
- Guide d'installation (INSTALLATION.md)
- Exemples d'utilisation (examples/example_usage.py)

[1.0.0]: https://github.com/yourusername/selenium-ui-test-tool/releases/tag/v1.0.0

