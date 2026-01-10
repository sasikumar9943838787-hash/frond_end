$remoteUrl = "https://github.com/sasi-kumar-92/frond_code_1.git"
$commitMessage = "Initial commit of frontend design"

Write-Host "Initializing Git repository..."
git init

Write-Host "Adding files..."
git add .

Write-Host "Committing changes..."
git commit -m $commitMessage

Write-Host "Renaming branch to main..."
git branch -M main

Write-Host "Checking remote origin..."
try {
    git remote get-url origin
    Write-Host "Updating existing remote origin..."
    git remote set-url origin $remoteUrl
}
catch {
    Write-Host "Adding new remote origin..."
    git remote add origin $remoteUrl
}

Write-Host "Pushing to remote..."
git push -u origin main

Write-Host "Done! If prompted, please enter your GitHub credentials."
Read-Host -Prompt "Press Enter to exit"
