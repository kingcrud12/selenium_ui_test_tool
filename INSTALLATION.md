# Installation Guide

> 🇫🇷 Lire ce guide en français : [INSTALLATION.fr.md](INSTALLATION.fr.md)

## Development install

Install the library in editable mode while hacking on it:

```bash
# Clone (or move into) the repository
cd selenium_ui_test_tool

# Install in editable mode
pip install -e .
```

## Install from source

```bash
# Build the distribution archives
python -m build

# Install from the freshly built wheel
pip install dist/selenium_ui_test_tool-1.0.0-py3-none-any.whl
```

## Install from PyPI (once published)

```bash
pip install selenium-ui-test-tool
```

## Validate the installation

```python
from selenium_ui_test_tool import BaseTest, create_driver
print("✅ Installation successful!")
```

## System dependencies

### ChromeDriver

`webdriver-manager` downloads ChromeDriver automatically, but you can still:

1. **Install manually** from [chromedriver.chromium.org](https://chromedriver.chromium.org/)
2. **Homebrew (macOS)**: `brew install chromedriver`
3. **apt (Linux)**: `sudo apt-get install chromium-chromedriver`

### Chrome/Chromium

Make sure Google Chrome or Chromium is installed on the target machine.

## Troubleshooting

### Error: `chromedriver not found`

Set the `CHROMEDRIVER_PATH` environment variable:

```bash
export CHROMEDRIVER_PATH=/path/to/chromedriver
```

Or install `webdriver-manager`:

```bash
pip install webdriver-manager
```

### Error: `Module not found`

Confirm that the package is installed:

```bash
pip list | grep selenium-ui-test-tool
```

If it is missing, reinstall:

```bash
pip install -e .
```
