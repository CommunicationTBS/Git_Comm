@echo off
:: Pose la question à l'utilisateur
set /p msg="Entre ton message de commit : "

:: Si tu appuies sur Entrée sans rien taper, il met "Update"
if "%msg%"=="" set msg="Mise a jour automatique"

git add .
git commit -m "%msg%"
git push
echo ✅ Push effectue avec le message : %msg%
pause