#!/bin/bash

# GitHub Push Script for JHWS Website
# This script helps you push your code to GitHub

echo "=========================================="
echo "JHWS Website - GitHub Push Script"
echo "=========================================="
echo ""

# Check if git is initialized
if [ ! -d .git ]; then
    echo "Error: Not a git repository. Please run this from the jhws-website folder."
    exit 1
fi

# Prompt for GitHub repository URL
echo "Please enter your GitHub repository URL:"
echo "Example: https://github.com/YOUR-USERNAME/jhws-website.git"
read -p "Repository URL: " REPO_URL

# Validate URL
if [ -z "$REPO_URL" ]; then
    echo "Error: Repository URL cannot be empty."
    exit 1
fi

echo ""
echo "Setting up remote repository..."

# Remove existing remote if it exists
git remote remove origin 2>/dev/null

# Add new remote
git remote add origin "$REPO_URL"

echo "Remote repository added successfully!"
echo ""
echo "Pushing code to GitHub..."
echo ""

# Push to GitHub
git push -u origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "=========================================="
    echo "✅ SUCCESS! Your code is now on GitHub!"
    echo "=========================================="
    echo ""
    echo "Next steps:"
    echo "1. Visit your repository on GitHub to verify"
    echo "2. Follow DEPLOYMENT_GUIDE.md to deploy to Cloudflare Pages"
    echo ""
else
    echo ""
    echo "=========================================="
    echo "❌ Push failed. Please check:"
    echo "=========================================="
    echo ""
    echo "1. Is the repository URL correct?"
    echo "2. Do you have access to this repository?"
    echo "3. Are you using a Personal Access Token (not password)?"
    echo ""
    echo "See GITHUB_SETUP_GUIDE.md for detailed instructions."
    echo ""
fi