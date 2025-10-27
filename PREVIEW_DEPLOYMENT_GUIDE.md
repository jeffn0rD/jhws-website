# Preview Deployment Quick Guide

## 🎯 Your Two Websites

You now have **two versions** of your website:

### 🟢 Production (Live Site)
- **Branch**: `main`
- **URL**: `https://jhws-website.pages.dev` (or jhwsnewport.org)
- **Purpose**: Public-facing live website
- **Who sees it**: Everyone

### 🟡 Preview (Testing Site)
- **Branch**: `dev`
- **URL**: `https://dev.jhws-website.pages.dev`
- **Purpose**: Testing and team review
- **Who sees it**: Anyone with the URL (share with team)

---

## 📋 Simple Workflow

### Step 1: Make Changes on Dev
```bash
# Switch to dev branch
git checkout dev

# Make your changes (edit files, add images, etc.)

# Save and push
git add .
git commit -m "Description of changes"
git push origin dev
```

**Result**: Changes appear at `https://dev.jhws-website.pages.dev` in 2-3 minutes

### Step 2: Review with Team
- Share the dev URL with your team
- Everyone can view and test
- Make more changes if needed (repeat Step 1)

### Step 3: Go Live
```bash
# Merge dev to main
git checkout main
git merge dev
git push origin main
```

**Result**: Changes go live at `https://jhws-website.pages.dev` in 2-3 minutes

---

## 🚀 Using the Helper Scripts

We've created scripts to make this easier!

### Mac/Linux Users
```bash
cd jhws-website
./deploy-workflow.sh
```

### Windows Users
```bash
cd jhws-website
deploy-workflow.bat
```

**The script menu:**
1. Switch to DEV branch (for testing)
2. Switch to MAIN branch (production)
3. Push changes to DEV (creates preview)
4. Merge DEV to MAIN (go live)
5. View deployment status
6. Exit

---

## 🔍 Finding Your Preview URL

### Method 1: Cloudflare Dashboard
1. Go to https://dash.cloudflare.com/
2. Click on your project: `jhws-website`
3. Look for deployments from the `dev` branch
4. Click to see the preview URL

### Method 2: Direct URL Pattern
Your preview URL follows this pattern:
- **Dev preview**: `https://dev.jhws-website.pages.dev`
- **Production**: `https://jhws-website.pages.dev`

### Method 3: GitHub
- Cloudflare adds deployment status to commits
- Click on a commit to see the deployment URL

---

## 💡 Common Scenarios

### Scenario: Adding New Gallery Images

**On Dev (Testing):**
```bash
git checkout dev
# Add images to public/gallery/
# Update gallery.astro
git add .
git commit -m "Add new gallery images"
git push origin dev
```
👉 Preview at: `https://dev.jhws-website.pages.dev/gallery`
👉 Share with team for approval

**Go Live:**
```bash
git checkout main
git merge dev
git push origin main
```
👉 Live at: `https://jhws-website.pages.dev/gallery`

### Scenario: Updating Home Page Content

**On Dev (Testing):**
```bash
git checkout dev
# Edit src/pages/index.astro
git add .
git commit -m "Update opening date"
git push origin dev
```
👉 Preview at: `https://dev.jhws-website.pages.dev`
👉 Review and test

**Go Live:**
```bash
git checkout main
git merge dev
git push origin main
```
👉 Live at: `https://jhws-website.pages.dev`

---

## 📧 Sharing with Team

### Email Template

```
Subject: Website Updates for Review

Hi team,

I've made some updates to the website. Please review them at:

🔗 Preview URL: https://dev.jhws-website.pages.dev

Changes include:
- [List your changes here]

Please provide feedback by [date]. Once approved, I'll make these changes live.

The live site will remain unchanged until we approve these updates.

Thanks!
```

---

## ⚡ Quick Reference

| Action | Command | Result |
|--------|---------|--------|
| Switch to dev | `git checkout dev` | Work on preview |
| Push to dev | `git push origin dev` | Update preview URL |
| Switch to main | `git checkout main` | Work on production |
| Merge to main | `git merge dev` | Prepare to go live |
| Push to main | `git push origin main` | Go live! |

---

## 🎨 Visual Workflow

```
┌─────────────────────────────────────────────────────────┐
│                    YOUR WORKFLOW                         │
└─────────────────────────────────────────────────────────┘

1. MAKE CHANGES
   ↓
   Edit files locally
   ↓
   
2. TEST ON DEV
   ↓
   git checkout dev
   git add .
   git commit -m "message"
   git push origin dev
   ↓
   Preview at: https://dev.jhws-website.pages.dev
   ↓
   
3. REVIEW WITH TEAM
   ↓
   Share preview URL
   Get feedback
   Make adjustments if needed
   ↓
   
4. GO LIVE
   ↓
   git checkout main
   git merge dev
   git push origin main
   ↓
   Live at: https://jhws-website.pages.dev
```

---

## ✅ Benefits of This Workflow

1. **Safe Testing**: Test changes without affecting live site
2. **Team Review**: Everyone can preview before going live
3. **Easy Rollback**: Keep production stable
4. **Professional**: Industry-standard workflow
5. **Free**: No additional cost for preview deployments
6. **Automatic**: Cloudflare handles everything

---

## 🆘 Troubleshooting

### Preview URL Not Working?
1. Wait 2-3 minutes after pushing
2. Check Cloudflare dashboard for build status
3. Clear browser cache (Ctrl+Shift+R)

### Changes Not Showing?
1. Verify you pushed to the correct branch
2. Check build completed successfully
3. Try incognito/private browsing

### Need to Undo Changes?
```bash
# On dev branch, undo last commit
git checkout dev
git reset --hard HEAD~1
git push origin dev --force
```

---

## 📱 Mobile Testing

Both URLs work on mobile devices:
- **Dev**: `https://dev.jhws-website.pages.dev`
- **Production**: `https://jhws-website.pages.dev`

Share the dev URL via text/email for mobile testing!

---

## 🎉 You're All Set!

Your development workflow is configured and ready to use:
- ✅ Dev branch created
- ✅ Cloudflare will auto-deploy previews
- ✅ Helper scripts available
- ✅ Team can review before going live

**Next Steps:**
1. Wait 2-3 minutes for Cloudflare to deploy the dev branch
2. Visit `https://dev.jhws-website.pages.dev` to see your preview
3. Start using the dev → review → merge workflow

---

**Questions?** See the full guide: `DEVELOPMENT_WORKFLOW.md`