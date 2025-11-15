#!/bin/bash

# Script d'aide pour publier sur PyPI
# Usage: ./publish.sh [testpypi|pypi]

set -e

REPOSITORY=${1:-pypi}

echo "🚀 Publication de selenium-ui-test-tool sur $REPOSITORY"
echo ""

# Vérifier que build et twine sont installés
if ! command -v python &> /dev/null; then
    echo "❌ Python n'est pas installé"
    exit 1
fi

echo "📦 Installation des outils nécessaires..."
python -m pip install --upgrade build twine --quiet

echo "🧹 Nettoyage des anciennes distributions..."
rm -rf dist/ build/ *.egg-info

echo "🔨 Construction du package..."
python -m build

echo "✅ Vérification du package..."
twine check dist/*

if [ "$REPOSITORY" = "testpypi" ]; then
    echo "📤 Upload sur TestPyPI..."
    twine upload --repository testpypi dist/*
    echo ""
    echo "✅ Package publié sur TestPyPI !"
    echo "📥 Pour tester l'installation :"
    echo "   pip install --index-url https://test.pypi.org/simple/ selenium-ui-test-tool"
elif [ "$REPOSITORY" = "pypi" ]; then
    echo "📤 Upload sur PyPI..."
    twine upload dist/*
    echo ""
    echo "✅ Package publié sur PyPI !"
    echo "📥 Pour installer :"
    echo "   pip install selenium-ui-test-tool"
else
    echo "❌ Repository invalide. Utilisez 'testpypi' ou 'pypi'"
    exit 1
fi

