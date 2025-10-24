# Cloudflare Pages Deployment Guide for JHWS Website

This guide will walk you through deploying your Joshua House Warming Shelter website to Cloudflare Pages.

## Prerequisites

Before you begin, make sure you have:
- ✅ A Cloudflare account (sign up at https://dash.cloudflare.com/sign-up)
- ✅ A GitHub, GitLab, or Bitbucket account
- ✅ Your website code ready (this project)

## Step-by-Step Deployment

### Step 1: Prepare Your Repository

1. **Create a new repository** on GitHub, GitLab, or Bitbucket
   - Go to your Git provider and create a new repository
   - Name it something like `jhws-website`
   - Keep it public or private (both work with Cloudflare)

2. **Push your code to the repository**
   ```bash
   # Navigate to your project directory
   cd jhws-website
   
   # Initialize git (if not already done)
   git init
   
   # Add all files
   git add .
   
   # Commit your changes
   git commit -m "Initial commit: JHWS landing page"
   
   # Add your remote repository
   git remote add origin <your-repository-url>
   
   # Push to main branch
   git branch -M main
   git push -u origin main
   ```

### Step 2: Connect to Cloudflare Pages

1. **Log in to Cloudflare Dashboard**
   - Go to https://dash.cloudflare.com/
   - Log in with your credentials

2. **Navigate to Pages**
   - Click on "Workers & Pages" in the left sidebar
   - Click "Create application"
   - Select "Pages" tab
   - Click "Connect to Git"

3. **Authorize Cloudflare**
   - Select your Git provider (GitHub, GitLab, or Bitbucket)
   - Click "Connect" and authorize Cloudflare to access your repositories
   - You may need to grant specific repository access

4. **Select Your Repository**
   - Find and select your `jhws-website` repository
   - Click "Begin setup"

### Step 3: Configure Build Settings

On the build configuration page, enter the following:

- **Project name**: `jhws-website` (or your preferred name)
- **Production branch**: `main`
- **Framework preset**: Select "Astro" from the dropdown
- **Build command**: `npm run build`
- **Build output directory**: `dist`
- **Root directory**: Leave empty (or `/` if required)

**Advanced settings** (optional):
- **Node.js version**: 18 or higher (Cloudflare usually auto-detects)
- **Environment variables**: Leave empty for now (can add later for Donorbox)

### Step 4: Deploy

1. Click "Save and Deploy"
2. Cloudflare will start building your site
3. Wait for the build to complete (usually 1-3 minutes)
4. Once complete, you'll see a success message with your site URL

Your site will be available at: `https://jhws-website.pages.dev` (or similar)

### Step 5: Add Custom Domain (jhwsnewport.org)

1. **In your Cloudflare Pages project**:
   - Go to your project dashboard
   - Click on "Custom domains" tab
   - Click "Set up a custom domain"

2. **Add your domain**:
   - Enter `jhwsnewport.org`
   - Click "Continue"

3. **Configure DNS**:
   
   **If your domain is already on Cloudflare:**
   - Cloudflare will automatically add the necessary DNS records
   - Click "Activate domain"
   - Your site will be live on your custom domain in a few minutes

   **If your domain is NOT on Cloudflare:**
   - You'll need to add DNS records at your current domain registrar
   - Cloudflare will provide you with CNAME records to add
   - Example records:
     ```
     Type: CNAME
     Name: @ (or jhwsnewport.org)
     Value: jhws-website.pages.dev
     ```
   - Add these records at your domain registrar (GoDaddy, Namecheap, etc.)
   - Wait for DNS propagation (can take up to 48 hours, usually much faster)

4. **Add www subdomain** (optional but recommended):
   - Repeat the process for `www.jhwsnewport.org`
   - This ensures both `jhwsnewport.org` and `www.jhwsnewport.org` work

### Step 6: Enable HTTPS

Cloudflare automatically provides free SSL/TLS certificates:
- Go to your project → "Settings" → "SSL/TLS"
- Ensure "Always Use HTTPS" is enabled
- Your site will automatically redirect HTTP to HTTPS

## Continuous Deployment

Once set up, Cloudflare Pages will automatically:
- ✅ Build and deploy when you push to your main branch
- ✅ Create preview deployments for pull requests
- ✅ Provide deployment history and rollback options

To update your site:
```bash
# Make your changes
git add .
git commit -m "Update content"
git push origin main
```

Cloudflare will automatically rebuild and deploy your changes!

## Adding Donorbox Integration

Once you have your Donorbox account set up:

1. **Get your Donorbox campaign URL or embed code**
   - Log in to Donorbox
   - Go to your campaign
   - Copy the embed code or campaign URL

2. **Update the website**:
   - Edit `src/pages/index.astro`
   - Find the `<script>` section at the bottom
   - Replace the placeholder with your Donorbox code:

   ```javascript
   <script>
     // Option 1: Popup window
     document.getElementById('donorbox-button')?.addEventListener('click', () => {
       window.open('https://donorbox.org/your-campaign-name', '_blank', 'width=600,height=700');
     });
     
     // Option 2: Embedded widget (alternative)
     // window.DonorBox = { widgetLinkClassName: 'donate-button' };
     // const script = document.createElement('script');
     // script.src = 'https://donorbox.org/widget.js';
     // document.head.appendChild(script);
   </script>
   ```

3. **Commit and push**:
   ```bash
   git add .
   git commit -m "Add Donorbox integration"
   git push origin main
   ```

4. **Test the donation button** once deployed

## Troubleshooting

### Build Fails
- Check the build logs in Cloudflare Dashboard
- Ensure `package.json` has all dependencies
- Verify Node.js version is 18 or higher

### Custom Domain Not Working
- Check DNS records are correct
- Wait for DNS propagation (up to 48 hours)
- Verify domain is not already in use elsewhere
- Check SSL/TLS settings

### Site Not Updating
- Check if build succeeded in Cloudflare Dashboard
- Clear browser cache (Ctrl+Shift+R or Cmd+Shift+R)
- Check deployment history for errors

## Support Resources

- **Cloudflare Pages Documentation**: https://developers.cloudflare.com/pages/
- **Astro Documentation**: https://docs.astro.build/
- **Cloudflare Community**: https://community.cloudflare.com/

## Next Steps

After deployment:
1. ✅ Test all links and navigation
2. ✅ Verify responsive design on mobile devices
3. ✅ Set up Donorbox integration
4. ✅ Add Google Analytics (optional)
5. ✅ Submit to search engines (Google Search Console)
6. ✅ Set up email forwarding for contact@jhwsnewport.org

## Cost

Cloudflare Pages is **FREE** for:
- Unlimited sites
- Unlimited requests
- Unlimited bandwidth
- 500 builds per month
- 1 concurrent build

This is more than sufficient for your needs!

---

**Questions?** Feel free to reach out or consult the Cloudflare Pages documentation.