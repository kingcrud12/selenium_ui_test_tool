@echo off
REM Script d'aide pour publier sur PyPI (Windows)
REM Usage: publish.bat [testpypi|pypi]

setlocal enabledelayedexpansion

set REPOSITORY=%1
if "%REPOSITORY%"=="" set REPOSITORY=pypi

echo 🚀 Publication de selenium-ui-test-tool sur %REPOSITORY%
echo.

echo 📦 Installation des outils nécessaires...
python -m pip install --upgrade build twine --quiet

echo 🧹 Nettoyage des anciennes distributions...
if exist dist rmdir /s /q dist
if exist build rmdir /s /q build
for /d %%d in (*.egg-info) do rmdir /s /q "%%d"

echo 🔨 Construction du package...
python -m build

echo ✅ Vérification du package...
twine check dist\*

if "%REPOSITORY%"=="testpypi" (
    echo 📤 Upload sur TestPyPI...
    twine upload --repository testpypi dist\*
    echo.
    echo ✅ Package publié sur TestPyPI !
    echo 📥 Pour tester l'installation :
    echo    pip install --index-url https://test.pypi.org/simple/ selenium-ui-test-tool
) else if "%REPOSITORY%"=="pypi" (
    echo 📤 Upload sur PyPI...
    twine upload dist\*
    echo.
    echo ✅ Package publié sur PyPI !
    echo 📥 Pour installer :
    echo    pip install selenium-ui-test-tool
) else (
    echo ❌ Repository invalide. Utilisez 'testpypi' ou 'pypi'
    exit /b 1
)

