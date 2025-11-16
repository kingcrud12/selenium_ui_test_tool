# Dépannage GitHub Pages

## Erreur : "Custom domain is not properly formatted"

### Problème
Vous avez entré un nom simple (ex: `selenium-ui-tool`) dans le champ "Custom domain" de GitHub Pages.

### Solution

1. **Allez dans les paramètres de votre repository**
   - Cliquez sur **Settings**
   - Allez dans la section **Pages**

2. **Supprimez le domaine personnalisé**
   - Trouvez le champ **Custom domain**
   - **Supprimez** tout le contenu (laissez-le vide)
   - Cliquez sur **Save**

3. **Votre site utilisera l'URL GitHub Pages standard**
   ```
   https://votre-username.github.io/selenium-ui-test-tool/
   ```

### Quand utiliser un domaine personnalisé ?

Un domaine personnalisé ne doit être configuré **QUE** si :
- Vous possédez un vrai nom de domaine (ex: `example.com`)
- Vous avez configuré les enregistrements DNS correctement
- Le domaine est un **FQDN complet** (ex: `www.example.com` ou `example.com`)

### Format correct d'un domaine personnalisé

- ✅ `example.com`
- ✅ `www.example.com`
- ✅ `docs.example.com`
- ❌ `example` (nom simple)
- ❌ `selenium-ui-tool` (nom simple)

### URL GitHub Pages par défaut

Sans domaine personnalisé, votre site sera accessible à :
```
https://votre-username.github.io/nom-du-repo/
```

Cette URL fonctionne parfaitement et ne nécessite aucune configuration supplémentaire.

