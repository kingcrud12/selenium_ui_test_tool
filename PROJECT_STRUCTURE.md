# Project Structure

> 🇫🇷 Consulter la version française : [PROJECT_STRUCTURE.fr.md](PROJECT_STRUCTURE.fr.md)

## Overview

`selenium-ui-test-tool` is distributed as an installable Python package that accelerates Selenium-based UI tests.

## Key files

### Configuration
- `pyproject.toml` – Modern packaging (PEP 518)
- `setup.py` – Legacy installer for compatibility
- `MANIFEST.in` – Extra files to bundle
- `requirements.txt` – Project dependencies

### Documentation
- `README.md` – Main documentation with quick start
- `INSTALLATION.md` – Detailed installation guide
- `CHANGELOG.md` – Release history
- `CONTRIBUTING.md` – How to contribute
- `MIGRATION.md` – Steps to migrate from the previous layout
- `LICENSE` – MIT license

### Source code
- `selenium_ui_test_tool/` – Package entry point
  - `__init__.py` – Exposes the public API
  - `base_test/` – `BaseTest` orchestrator
  - `driver_builder/` – WebDriver creation & options
  - `wait_element/` – Explicit waits helpers
  - `click_on/` – Opinionated `click_on` utility for action stores
  - `click_element/` – Advanced click helper with logging
  - `fill_input/` – Scroll + fill an input
  - `fill_login_form/` – Auto-fill a login form
  - `fill_login_form_with_confirm_password/` – Auto-fill with password confirmation
  - `upload_file/` – Upload files using an env-var path
  - `config_actions/` – Scroll + click primitive
  - `get_env_var/` – Environment variable helper
  - `get_url/` – Navigation helper

### Examples
- `examples/` – How-to snippets
  - `example_usage.py` – End-to-end sample

### Configuration helpers
- `env.example` – Sample `.env`
- `.gitignore` – Git ignore rules

## Installation

```bash
# Editable/dev mode
pip install -e .

# From PyPI (when available)
pip install selenium-ui-test-tool
```

## Usage

```python
from selenium_ui_test_tool import BaseTest, create_driver, wait_for_element

# Run a BaseTest scenario
test = BaseTest(
    test_function=my_test_function,
    success_message="✅ Test passed",
    failure_message="❌ Test failed",
    url="https://example.com"
)
test.run()

# Or call utilities directly
driver = create_driver(headless=False)
element = wait_for_element(driver, By.ID, "my-element")
```

## Public API

Everything below can be imported from `selenium_ui_test_tool`:

- `BaseTest`
- `create_driver`
- `get_url`
- `wait_for_element`
- `click_element`
- `click_on`
- `fill_input`
- `fill_login_form`
- `fill_login_form_with_confirm_password`
- `upload_file`
- `configure_actions`
- `get_env_var`

## Development

1. Fork the repository
2. Create a feature branch
3. Implement & test
4. Submit a Pull Request

See `CONTRIBUTING.md` for the detailed checklist.
