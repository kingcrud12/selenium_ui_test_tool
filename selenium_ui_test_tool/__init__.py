"""
Selenium UI Test Tool - Bibliothèque pour faciliter les tests UI automatisés avec Selenium

Cette bibliothèque fournit des outils et des classes utilitaires pour simplifier
la création et l'exécution de tests UI automatisés avec Selenium WebDriver.
"""

from selenium_ui_test_tool.base_test.base_test import BaseTest
from selenium_ui_test_tool.driver_builder.driver_builder import create_driver
from selenium_ui_test_tool.get_url.get_url import get_url
from selenium_ui_test_tool.get_env_var.get_env_var import get_env_var
from selenium_ui_test_tool.wait_element.wait_elements import wait_for_element
from selenium_ui_test_tool.config_actions.config_actions import configure_actions

__version__ = "1.0.0"
__all__ = [
    "BaseTest",
    "create_driver",
    "get_url",
    "get_env_var",
    "wait_for_element",
    "configure_actions",
]

