# Development Workflow Guide

## 🎯 Overview

Your website now has a **two-branch workflow**:
- **`main` branch**: Production (live website)
- **`dev` branch**: Development (preview/testing)

## 🌐 How Cloudflare Preview Deployments Work

Cloudflare Pages automatically creates preview URLs for every branch:

### Production URL (main branch)
- **URL**: `https://jhws-website.pages.dev` (or your custom domain)
- **Branch**: `main`
- **Purpose**: Live website visible to the public

### Preview URL (dev branch)
- **URL**: `https://dev.jhws-website.pages.dev`
- **Branch**: `dev`
- **Purpose**: Testing and team review before going live

## 📋 Workflow Steps

### Step 1: Make Changes on Dev Branch

```bash
# Switch to dev branch
cd jhws-website
git checkout dev

# Make your changes (edit files, add images, etc.)

# Commit changes
git add .
git commit -m "Description of changes"

# Push to dev branch
git push origin dev
```

### Step 2: Cloudflare Auto-Deploys Preview

- Cloudflare automatically detects the push to `dev`
- Builds and deploys to preview URL
- Takes 2-3 minutes
- You'll get a preview URL like: `https://dev.jhws-website.pages.dev`

### Step 3: Review with Team

- Share the preview URL with team members
- Everyone can view and test the changes
- Make additional changes if needed (repeat Step 1)
- Each push creates a new preview deployment

### Step 4: Merge to Production (Go Live)

Once approved, merge `dev` to `main`:

```bash
# Switch to main branch
git checkout main

# Merge dev into main
git merge dev

# Push to production
git push origin main
```

Or use GitHub's Pull Request interface (recommended):
1. Go to https://github.com/jeffn0rD/jhws-website
2. Click "Pull requests" → "New pull request"
3. Base: `main` ← Compare: `dev`
4. Click "Create pull request"
5. Review changes
6. Click "Merge pull request"

## 🔗 Finding Your Preview URLs

### Method 1: Cloudflare Dashboard
1. Go to https://dash.cloudflare.com/
2. Navigate to Workers & Pages → jhws-website
3. Click "View builds"
4. Find your branch deployment
5. Click to see the preview URL

### Method 2: GitHub Integration
- Cloudflare comments on commits with preview URLs
- Check the commit on GitHub for the deployment link

### Method 3: URL Pattern
Preview URLs follow this pattern:
- `https://[branch].[project-name].pages.dev`
- Example: `https://dev.jhws-website.pages.dev`

## 📝 Common Workflows

### Scenario 1: Adding New Gallery Images

```bash
# Switch to dev branch
git checkout dev

# Add images to public/gallery/
cp new-images/*.jpeg public/gallery/

# Update gallery.astro with new image entries
# Edit src/pages/gallery.astro

# Commit and push
git add .
git commit -m "Add new gallery images"
git push origin dev

# Preview at: https://dev.jhws-website.pages.dev/gallery
# Share with team for review

# When approved, merge to main
git checkout main
git merge dev
git push origin main
```

### Scenario 2: Updating Content

```bash
# Switch to dev branch
git checkout dev

# Edit content files
# Example: src/pages/index.astro

# Commit and push
git add .
git commit -m "Update opening date and contact info"
git push origin dev

# Preview at: https://dev.jhws-website.pages.dev
# Review and test

# When approved, merge to main
git checkout main
git merge dev
git push origin main
```

### Scenario 3: Testing New Features

```bash
# Switch to dev branch
git checkout dev

# Create new page or component
# Example: src/pages/volunteer.astro

# Commit and push
git add .
git commit -m "Add volunteer signup page"
git push origin dev

# Preview at: https://dev.jhws-website.pages.dev/volunteer
# Test thoroughly with team

# When approved, merge to main
git checkout main
git merge dev
git push origin main
```

## 🎨 Cloudflare Pages Features

### Automatic Deployments
- ✅ Every push triggers a build
- ✅ Both `main` and `dev` branches deploy automatically
- ✅ Build status visible in Cloudflare dashboard
- ✅ Build logs available for debugging

### Preview Deployments
- ✅ Unique URL for each branch
- ✅ Unlimited preview deployments
- ✅ No additional cost
- ✅ Same performance as production

### Deployment History
- ✅ View all past deployments
- ✅ Rollback to previous versions
- ✅ Compare deployments
- ✅ Download build artifacts

## 🔐 Access Control

### Public Preview URLs
- Preview URLs are publicly accessible
- Anyone with the URL can view
- Use for team review and testing

### Private Previews (Optional)
If you need password-protected previews:
1. Go to Cloudflare Pages settings
2. Enable "Access" for preview deployments
3. Set up authentication
4. Team members need to authenticate to view

## 📊 Deployment Status

### Check Build Status

**Via Cloudflare Dashboard:**
1. Go to Workers & Pages → jhws-website
2. View recent deployments
3. See build logs and status

**Via GitHub:**
- Cloudflare adds status checks to commits
- Green checkmark = successful deployment
- Red X = build failed

## 🚨 Troubleshooting

### Preview URL Not Working
1. Check Cloudflare dashboard for build status
2. Verify branch was pushed successfully
3. Wait 2-3 minutes for build to complete
4. Check build logs for errors

### Changes Not Showing
1. Clear browser cache (Ctrl+Shift+R or Cmd+Shift+R)
2. Verify correct branch is deployed
3. Check if build completed successfully
4. Try incognito/private browsing mode

### Build Failed
1. Check build logs in Cloudflare dashboard
2. Verify all files are committed
3. Check for syntax errors
4. Test build locally: `npm run build`

## 📱 Sharing with Team

### For Non-Technical Team Members

**Email Template:**
```
Subject: Preview of Website Updates

Hi team,

I've made some updates to the website. Please review them at:

Preview URL: https://dev.jhws-website.pages.dev

Changes include:
- [List your changes]

Please provide feedback by [date]. Once approved, I'll make these changes live.

Thanks!
```

### For Technical Team Members

Share the GitHub Pull Request:
1. Create PR from `dev` to `main`
2. Cloudflare adds preview URL to PR
3. Team can review code and preview
4. Approve and merge when ready

## 🎯 Best Practices

### 1. Always Test on Dev First
- Never push directly to `main`
- Always test changes on `dev` branch
- Get team approval before merging

### 2. Use Descriptive Commit Messages
```bash
# Good
git commit -m "Add volunteer signup form with email validation"

# Bad
git commit -m "updates"
```

### 3. Keep Dev and Main in Sync
- Regularly merge `main` into `dev` to stay current
- Avoid long-running dev branches
- Merge to production frequently

### 4. Document Changes
- Keep a changelog
- Note what's in dev vs production
- Communicate with team

## 🔄 Syncing Branches

### Update Dev with Latest Main

```bash
# Switch to dev
git checkout dev

# Pull latest main
git fetch origin main

# Merge main into dev
git merge origin/main

# Push updated dev
git push origin dev
```

## 📋 Quick Reference

### Common Commands

```bash
# Switch to dev branch
git checkout dev

# Make changes, then commit
git add .
git commit -m "Your message"
git push origin dev

# Merge to production
git checkout main
git merge dev
git push origin main

# Check current branch
git branch

# View branch status
git status
```

### URLs

- **Production**: `https://jhws-website.pages.dev` (or your custom domain)
- **Dev Preview**: `https://dev.jhws-website.pages.dev`
- **Cloudflare Dashboard**: https://dash.cloudflare.com/
- **GitHub Repo**: https://github.com/jeffn0rD/jhws-website

## ✅ Setup Complete!

Your development workflow is now configured:
- ✅ `dev` branch created
- ✅ Cloudflare will auto-deploy previews
- ✅ Team can review before going live
- ✅ Safe, professional workflow

## 🎉 Next Steps

1. Wait 2-3 minutes for Cloudflare to deploy the `dev` branch
2. Check Cloudflare dashboard for preview URL
3. Share preview URL with team
4. Start using the dev → review → merge workflow

---

**Questions?** Check the Cloudflare Pages documentation: https://developers.cloudflare.com/pages/