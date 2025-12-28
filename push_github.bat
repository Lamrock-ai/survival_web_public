@echo off
echo --- Sauvegarde automatique vers GitHub ---

:: Se place dans le bon dossier (optionnel si le .bat est déjà dedans)
cd /d "%~dp0"

:: Ajoute tous les fichiers
echo Ajout des fichiers...
git add .

:: Demande à l'utilisateur de saisir un message de commit
set /p message="Entrez le message de votre sauvegarde : "

:: Si aucun message n'est saisi, un message par defaut est mis
if "%message%"=="" set message="Mise a jour automatique"

:: Commit et Push
echo Enregistrement du code (commit)...
git commit -m "%message%"

echo Envoi vers GitHub (push)...
git push origin main

echo --- Termine ! ---
pause