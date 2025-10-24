# Quick Start Guide - JHWS Website

## 🎉 Your Website is Ready!

Your professional landing page for Joshua House Warming Shelter is complete and ready to deploy!

## 📋 What You Have

✅ **Fully functional Astro website** with:
- Professional header with your logo
- Responsive navigation menu
- Hero section with tagline
- Main content sections (About, Donate, Contact)
- Professional footer
- Mobile-responsive design
- Donorbox integration ready

✅ **Complete documentation**:
- README.md - Project overview and commands
- DEPLOYMENT_GUIDE.md - Step-by-step Cloudflare Pages deployment
- DONORBOX_INTEGRATION.md - Detailed Donorbox setup guide
- This QUICK_START.md - Quick reference

## 🚀 Next Steps (In Order)

### 1. Preview Your Site Locally (Optional)
```bash
cd jhws-website
npm install
npm run dev
```
Visit http://localhost:4321 to see your site

### 2. Deploy to Cloudflare Pages

**Quick Steps:**
1. Create a GitHub/GitLab account if you don't have one
2. Create a new repository
3. Push this code to your repository:
   ```bash
   git init
   git add .
   git commit -m "Initial commit"
   git remote add origin <your-repo-url>
   git push -u origin main
   ```
4. Go to Cloudflare Dashboard → Workers & Pages → Create
5. Connect your Git repository
6. Configure build settings:
   - Framework: Astro
   - Build command: `npm run build`
   - Build output: `dist`
7. Click "Save and Deploy"

**Detailed instructions:** See `DEPLOYMENT_GUIDE.md`

### 3. Set Up Your Custom Domain

1. In Cloudflare Pages project settings
2. Go to "Custom domains"
3. Add `jhwsnewport.org`
4. Follow DNS configuration instructions
5. Wait for DNS propagation (usually 5-30 minutes)

### 4. Integrate Donorbox

1. Create free Donorbox account at https://donorbox.org
2. Create your campaign
3. Get your campaign URL
4. Update `src/pages/index.astro` with your Donorbox URL
5. Push changes to Git (auto-deploys)

**Detailed instructions:** See `DONORBOX_INTEGRATION.md`

## 📱 Preview Your Site Now

Your site is currently running at:
**https://4321-17f495c7-1612-4969-bd40-85c75a0ca6e7.proxy.daytona.works**

(This is a temporary preview URL - your permanent URL will be jhwsnewport.org after deployment)

## 🎨 Customization

### Update Content
Edit `src/pages/index.astro` to change:
- Text content
- Opening date
- Contact information
- Any other page content

### Change Colors
Edit `src/layouts/Layout.astro` to modify:
- Primary color: `--primary-color`
- Secondary color: `--secondary-color`
- Accent color: `--accent-color`

### Replace Logo
Replace `public/logo.jpg` with your new logo file

### After Making Changes
```bash
git add .
git commit -m "Update content"
git push origin main
```
Cloudflare will automatically rebuild and deploy!

## 📞 Support

If you need help:
1. Check the detailed guides in this folder
2. Cloudflare Pages docs: https://developers.cloudflare.com/pages/
3. Astro docs: https://docs.astro.build/
4. Donorbox help: https://donorbox.org/help

## ✅ Checklist

Before going live, make sure you:
- [ ] Deployed to Cloudflare Pages
- [ ] Added custom domain (jhwsnewport.org)
- [ ] Set up Donorbox account
- [ ] Integrated Donorbox donation button
- [ ] Tested donation flow
- [ ] Verified site on mobile devices
- [ ] Checked all links work
- [ ] Reviewed all content for accuracy

## 🎯 Key Features

Your website includes:
- ✅ Professional, clean design
- ✅ Fully responsive (mobile, tablet, desktop)
- ✅ Fast loading (static site generation)
- ✅ SEO-friendly structure
- ✅ Secure (HTTPS via Cloudflare)
- ✅ Free hosting (Cloudflare Pages)
- ✅ Automatic deployments (push to Git)
- ✅ Donation integration ready

## 💰 Costs

**Total Cost: $0/month**
- Cloudflare Pages: FREE
- Astro framework: FREE
- Donorbox: FREE (1.5% platform fee on donations)

Only costs:
- Domain registration: ~$12-15/year (if not already owned)
- Payment processing: ~2.9% + $0.30 per donation (standard rates)

## 🔄 Updating Your Site

To make changes in the future:
1. Edit the files locally
2. Test with `npm run dev`
3. Commit changes: `git add . && git commit -m "Description"`
4. Push to Git: `git push origin main`
5. Cloudflare automatically rebuilds and deploys!

---

**Congratulations!** Your website is ready to help Joshua House Warming Shelter make a difference in the community! 🎉