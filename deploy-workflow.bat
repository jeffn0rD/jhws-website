@echo off
REM JHWS Website Deployment Workflow Helper (Windows)
REM This script helps you manage dev and production deployments

echo ==========================================
echo JHWS Website - Deployment Workflow
echo ==========================================
echo.

REM Check current branch
for /f "tokens=*" %%i in ('git branch --show-current') do set CURRENT_BRANCH=%%i
echo Current branch: %CURRENT_BRANCH%
echo.

REM Menu
echo What would you like to do?
echo.
echo 1) Switch to DEV branch (for testing)
echo 2) Switch to MAIN branch (production)
echo 3) Push changes to DEV (creates preview)
echo 4) Merge DEV to MAIN (go live)
echo 5) View deployment status
echo 6) Exit
echo.

set /p choice="Enter your choice (1-6): "

if "%choice%"=="1" goto switch_dev
if "%choice%"=="2" goto switch_main
if "%choice%"=="3" goto push_dev
if "%choice%"=="4" goto merge_main
if "%choice%"=="5" goto view_status
if "%choice%"=="6" goto exit_script
goto invalid_choice

:switch_dev
echo.
echo Switching to DEV branch...
git checkout dev
echo SUCCESS: Now on DEV branch
echo Make your changes, then run this script again to push.
goto end

:switch_main
echo.
echo Switching to MAIN branch...
git checkout main
echo SUCCESS: Now on MAIN branch (production)
goto end

:push_dev
echo.
echo Pushing changes to DEV branch...
git add .
set /p message="Enter commit message: "
git commit -m "%message%"
git push https://x-access-token:%GITHUB_TOKEN%@github.com/jeffn0rD/jhws-website.git dev
echo.
echo SUCCESS: Changes pushed to DEV!
echo Preview URL: https://dev.jhws-website.pages.dev
echo Wait 2-3 minutes for Cloudflare to build and deploy.
goto end

:merge_main
echo.
echo WARNING: This will make DEV changes live on production!
set /p confirm="Are you sure? (yes/no): "
if not "%confirm%"=="yes" (
    echo Cancelled.
    goto end
)
echo.
echo Merging DEV to MAIN...
git checkout main
git merge dev
git push https://x-access-token:%GITHUB_TOKEN%@github.com/jeffn0rD/jhws-website.git main
echo.
echo SUCCESS: Changes are now LIVE on production!
echo Production URL: https://jhws-website.pages.dev
goto end

:view_status
echo.
echo Opening Cloudflare dashboard...
echo Visit: https://dash.cloudflare.com/
echo.
echo Or check GitHub: https://github.com/jeffn0rD/jhws-website
goto end

:exit_script
echo Goodbye!
exit /b 0

:invalid_choice
echo Invalid choice. Please run the script again.
exit /b 1

:end
echo.
echo ==========================================
pause