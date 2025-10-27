#!/bin/bash

# JHWS Website Deployment Workflow Helper
# This script helps you manage dev and production deployments

echo "=========================================="
echo "JHWS Website - Deployment Workflow"
echo "=========================================="
echo ""

# Check current branch
CURRENT_BRANCH=$(git branch --show-current)
echo "Current branch: $CURRENT_BRANCH"
echo ""

# Menu
echo "What would you like to do?"
echo ""
echo "1) Switch to DEV branch (for testing)"
echo "2) Switch to MAIN branch (production)"
echo "3) Push changes to DEV (creates preview)"
echo "4) Merge DEV to MAIN (go live)"
echo "5) View deployment status"
echo "6) Exit"
echo ""

read -p "Enter your choice (1-6): " choice

case $choice in
  1)
    echo ""
    echo "Switching to DEV branch..."
    git checkout dev
    echo "✅ Now on DEV branch"
    echo "Make your changes, then run this script again to push."
    ;;
  
  2)
    echo ""
    echo "Switching to MAIN branch..."
    git checkout main
    echo "✅ Now on MAIN branch (production)"
    ;;
  
  3)
    echo ""
    echo "Pushing changes to DEV branch..."
    git add .
    read -p "Enter commit message: " message
    git commit -m "$message"
    git push https://x-access-token:$GITHUB_TOKEN@github.com/jeffn0rD/jhws-website.git dev
    echo ""
    echo "✅ Changes pushed to DEV!"
    echo "Preview URL: https://dev.jhws-website.pages.dev"
    echo "Wait 2-3 minutes for Cloudflare to build and deploy."
    ;;
  
  4)
    echo ""
    echo "⚠️  WARNING: This will make DEV changes live on production!"
    read -p "Are you sure? (yes/no): " confirm
    if [ "$confirm" = "yes" ]; then
      echo ""
      echo "Merging DEV to MAIN..."
      git checkout main
      git merge dev
      git push https://x-access-token:$GITHUB_TOKEN@github.com/jeffn0rD/jhws-website.git main
      echo ""
      echo "✅ Changes are now LIVE on production!"
      echo "Production URL: https://jhws-website.pages.dev"
    else
      echo "Cancelled."
    fi
    ;;
  
  5)
    echo ""
    echo "Opening Cloudflare dashboard..."
    echo "Visit: https://dash.cloudflare.com/"
    echo ""
    echo "Or check GitHub: https://github.com/jeffn0rD/jhws-website"
    ;;
  
  6)
    echo "Goodbye!"
    exit 0
    ;;
  
  *)
    echo "Invalid choice. Please run the script again."
    exit 1
    ;;
esac

echo ""
echo "=========================================="