# Contributing Guide

> 🇫🇷 Lire ce guide en français : [CONTRIBUTING.fr.md](CONTRIBUTING.fr.md)

Thank you for helping improve Selenium UI Test Tool! 🎉

## How to contribute

### Report a bug

1. Check that the issue does not already exist.
2. Open a new issue including:
   - clear description of the bug
   - steps to reproduce
   - expected vs. actual behavior
   - environment details (OS, Python, Selenium)
   - minimal reproducible code when possible

### Propose a feature

1. Open an issue to discuss the idea first.
2. Wait for validation before coding.
3. Follow the project conventions when implementing.

### Submit a Pull Request

1. **Fork** the repository.
2. **Create a branch** (`git checkout -b feature/AmazingFeature`).
3. **Commit** your changes (`git commit -m 'Add AmazingFeature'`).
4. **Push** the branch (`git push origin feature/AmazingFeature`).
5. **Open a Pull Request**.

## Coding standards

### Python style

- Follow PEP 8.
- Add docstrings to all public functions and classes.
- Prefer type hints on function signatures.

### Tests

- Add tests for every new feature.
- Ensure all tests pass before submitting.

### Documentation

- Update docs when needed.
- Provide usage examples for new utilities.

## Code layout

```
selenium_ui_test_tool/
├── selenium_ui_test_tool/
│   ├── base_test/
│   ├── driver_builder/
│   ├── wait_element/
│   ├── config_actions/
│   ├── get_env_var/
│   └── get_url/
```

## Development workflow

1. Branch off `main`.
2. Implement your change.
3. Test locally.
4. Update documentation if needed.
5. Submit the PR.

## Questions?

Open an issue whenever something is unclear!
