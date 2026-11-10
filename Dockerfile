# Image de base avec Python 3.12
FROM python:3.12-slim

# Définir le dossier de travail
WORKDIR /app

# Copier les dépendances
COPY requirements.txt .

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Copier les fichiers de l'application
COPY app.py auth.py ./

# Créer un utilisateur non privilégié
RUN useradd --create-home appuser && chown -R appuser:appuser /app

# Exécuter l'application avec cet utilisateur
USER appuser

# Indiquer le port utilisé
EXPOSE 5000

# Lancer l'application avec Gunicorn
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]
