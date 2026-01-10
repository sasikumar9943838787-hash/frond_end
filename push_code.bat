@echo off
echo Initializing Git repository...
git init

echo Adding files...
git add .

echo Committing changes...
git commit -m "Initial commit of frontend design"

echo Renaming branch to main...
git branch -M main

echo Adding remote origin...
git remote remove origin 2>nul
git remote add origin https://github.com/sasi-kumar-92/frond_code_1.git

echo Pushing to remote...
git push -u origin main

echo Done!
pause
