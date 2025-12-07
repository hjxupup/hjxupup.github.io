# GitHub Push Script with Personal Access Token
# This script will help you push to GitHub using a Personal Access Token

Write-Host "=== GitHub Push Script ===" -ForegroundColor Green
Write-Host ""
Write-Host "To push to GitHub, you need a Personal Access Token (PAT)." -ForegroundColor Yellow
Write-Host ""
Write-Host "If you don't have one, create it at:" -ForegroundColor Yellow
Write-Host "https://github.com/settings/tokens" -ForegroundColor Cyan
Write-Host ""
Write-Host "Required permissions: repo (all)" -ForegroundColor Yellow
Write-Host ""

$username = Read-Host "Enter your GitHub username"
$token = Read-Host "Enter your Personal Access Token" -AsSecureString
$tokenPlain = [Runtime.InteropServices.Marshal]::PtrToStringAuto([Runtime.InteropServices.Marshal]::SecureStringToBSTR($token))

# Temporarily update remote URL with token
$remoteUrl = "https://${username}:${tokenPlain}@github.com/hjxupup/hjxupup.github.io.git"
git remote set-url origin $remoteUrl

Write-Host ""
Write-Host "Pushing to GitHub..." -ForegroundColor Green
git push origin main

# Restore original remote URL (without token)
git remote set-url origin https://github.com/hjxupup/hjxupup.github.io.git

Write-Host ""
Write-Host "Done! The token has been removed from the remote URL." -ForegroundColor Green

