# Migration Guide

> 🇫🇷 Lire en français : [MIGRATION.fr.md](MIGRATION.fr.md)

## Library transformation

The project is now delivered as an installable Python package. Key changes:

## Structure

### Before
```
selenium_ui_test_tool/
├── base_test/
├── config_actions/
├── driver_builder/
├── get_env_var/
├── get_url/
└── wait_element/
```

### After
```
selenium_ui_test_tool/
├── selenium_ui_test_tool/    # Package
│   ├── base_test/
│   ├── config_actions/
│   ├── driver_builder/
│   ├── get_env_var/
│   ├── get_url/
│   └── wait_element/
├── examples/                 # Usage samples
├── pyproject.toml            # Package config
├── setup.py                  # Legacy installer
└── README.md                 # Documentation
```

## Import changes

### Before
```python
from driver_builder.driver_builder import create_driver
from get_url.get_url import get_url
```

### After
```python
from selenium_ui_test_tool import create_driver, get_url
# orrom selenium_ui_test_tool.driver_builder.driver_builder import create_driver
```

## Installation

### Development mode
```bash
pip install -e .
```

### From PyPI (when published)
```bash
pip install selenium-ui-test-tool
```

## Usage

### Before
```python
from base_test.base_test import BaseTest
```

### After
```python
from selenium_ui_test_tool import BaseTest
```

## Notes

- Legacy root folders were removed.
- Always import from the `selenium_ui_test_tool` namespace.
- All internal imports were updated accordingly.
