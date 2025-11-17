# Changelog

Tous les changements notables de ce projet seront documentés dans ce fichier.

Le format est basé sur [Keep a Changelog](https://keepachangelog.com/fr/1.0.0/),
et ce projet adhère à [Semantic Versioning](https://semver.org/lang/fr/).

## [1.0.3] - 2024-01-XX

### Ajouté
- Nouvel utilitaire `click_on` pour créer des stores d'actions lisibles sans multiplier les fichiers
- Export de `click_on` dans l'API publique

### Modifié
- Documentation (README, docs/) mise à jour avec des exemples de stores d'actions et de déclencheurs simplifiés
- Page web du tutoriel enrichie pour présenter le store `click_on`

## [1.0.2] - 2024-01-XX

### Modifié
- Mise à jour de la documentation et amélioration de la stabilité du package

## [1.0.1] - 2024-01-XX

### Ajouté
- Nouvelle fonction `click_element()` pour cliquer sur des éléments avec des fonctionnalités avancées :
  - Attente personnalisable avant le clic (`wait_before_click`)
  - Messages de succès et d'erreur personnalisables
  - Vérification optionnelle de l'existence de l'élément avant le clic

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

