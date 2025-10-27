@echo off
REM GitHub Push Script for JHWS Website (Windows)
REM This script helps you push your code to GitHub

echo ==========================================
echo JHWS Website - GitHub Push Script
echo ==========================================
echo.

REM Check if git is initialized
if not exist .git (
    echo Error: Not a git repository. Please run this from the jhws-website folder.
    pause
    exit /b 1
)

REM Prompt for GitHub repository URL
echo Please enter your GitHub repository URL:
echo Example: https://github.com/YOUR-USERNAME/jhws-website.git
set /p REPO_URL="Repository URL: "

REM Validate URL
if "%REPO_URL%"=="" (
    echo Error: Repository URL cannot be empty.
    pause
    exit /b 1
)

echo.
echo Setting up remote repository...

REM Remove existing remote if it exists
git remote remove origin 2>nul

REM Add new remote
git remote add origin "%REPO_URL%"

echo Remote repository added successfully!
echo.
echo Pushing code to GitHub...
echo.

REM Push to GitHub
git push -u origin main

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ==========================================
    echo SUCCESS! Your code is now on GitHub!
    echo ==========================================
    echo.
    echo Next steps:
    echo 1. Visit your repository on GitHub to verify
    echo 2. Follow DEPLOYMENT_GUIDE.md to deploy to Cloudflare Pages
    echo.
) else (
    echo.
    echo ==========================================
    echo Push failed. Please check:
    echo ==========================================
    echo.
    echo 1. Is the repository URL correct?
    echo 2. Do you have access to this repository?
    echo 3. Are you using a Personal Access Token (not password)?
    echo.
    echo See GITHUB_SETUP_GUIDE.md for detailed instructions.
    echo.
)

pause