import os
from pathlib import Path
from dotenv import load_dotenv

PROJECT_ROOT = Path(__file__).resolve().parents[1]
ENV_PATH = PROJECT_ROOT / ".env"

if ENV_PATH.exists():
    load_dotenv(ENV_PATH, override=False)
else:
    load_dotenv(override=False)


def get_env_var(name: str, required=True):
    value = os.getenv(name)

    if not value and os.getenv("CI") == "true":
        value = os.environ.get(name)

    if required and not value:
        is_ci = os.getenv("CI") == "true"
        env_source = "secrets GitHub" if is_ci else "fichier .env"
        raise ValueError(
            f"⚠️ La variable d'environnement {name} doit être définie ({env_source}).\n"
            f"Vérifiez que le secret {name} est configuré dans GitHub Settings → Secrets and variables → Actions."
        )
    return value
