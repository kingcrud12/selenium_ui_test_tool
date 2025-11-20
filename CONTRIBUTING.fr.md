# Guide de contribution

Merci de votre intérêt pour contribuer à Selenium UI Test Tool ! 🎉

## Comment contribuer

### Signaler un bug

Si vous trouvez un bug :

1. Vérifiez qu'il n'existe pas déjà une issue ouverte
2. Créez une nouvelle issue avec :
   - Une description claire du bug
   - Les étapes pour reproduire
   - Le comportement attendu vs le comportement actuel
   - Votre environnement (OS, Python, Selenium versions)
   - Un exemple de code minimal si possible

### Proposer une fonctionnalité

1. Créez une issue pour discuter de la fonctionnalité
2. Attendez la validation avant de commencer à coder
3. Implémentez la fonctionnalité en suivant les conventions du projet

### Soumettre une Pull Request

1. **Fork** le projet
2. **Créez une branche** pour votre fonctionnalité (`git checkout -b feature/AmazingFeature`)
3. **Commitez** vos changements (`git commit -m 'Add some AmazingFeature'`)
4. **Push** vers la branche (`git push origin feature/AmazingFeature`)
5. **Ouvrez une Pull Request**

## Standards de code

### Style Python

- Suivez PEP 8 pour le style de code
- Utilisez des docstrings pour toutes les fonctions et classes
- Type hints recommandés pour les signatures de fonctions

### Tests

- Ajoutez des tests pour toute nouvelle fonctionnalité
- Assurez-vous que tous les tests passent avant de soumettre

### Documentation

- Mettez à jour la documentation si nécessaire
- Ajoutez des exemples d'utilisation pour les nouvelles fonctionnalités

## Structure du code

```
selenium_ui_test_tool/
├── selenium_ui_test_tool/
│   ├── base_test/          # Classe principale pour les tests
│   ├── driver_builder/     # Construction du driver
│   ├── wait_element/       # Utilitaires d'attente
│   ├── config_actions/     # Configuration d'actions
│   ├── get_env_var/        # Gestion des variables d'environnement
│   └── get_url/            # Navigation
```

## Processus de développement

1. Créez votre branche depuis `main`
2. Développez votre fonctionnalité
3. Testez localement
4. Mettez à jour la documentation si nécessaire
5. Soumettez votre PR

## Questions ?

N'hésitez pas à ouvrir une issue pour toute question !

