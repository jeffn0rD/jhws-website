# Joshua House Warming Shelter Website

A professional landing page for Joshua House Warming Shelter (jhwsnewport.org) built with Astro SSG framework.

## 🚀 Project Structure

```
jhws-website/
├── public/
│   ├── favicon.svg
│   └── logo.jpg          # Joshua House logo
├── src/
│   ├── components/
│   │   ├── Header.astro  # Header with logo and tagline
│   │   ├── Navigation.astro  # Navigation menu
│   │   └── Footer.astro  # Footer with contact info
│   ├── layouts/
│   │   └── Layout.astro  # Main layout wrapper
│   └── pages/
│       └── index.astro   # Landing page
└── package.json
```

## 🧞 Commands

All commands are run from the root of the project, from a terminal:

| Command                   | Action                                           |
| :------------------------ | :----------------------------------------------- |
| `npm install`             | Installs dependencies                            |
| `npm run dev`             | Starts local dev server at `localhost:4321`      |
| `npm run build`           | Build your production site to `./dist/`          |
| `npm run preview`         | Preview your build locally, before deploying     |

## 📦 Deployment to Cloudflare Pages

### Prerequisites
- A Cloudflare account (free tier is sufficient)
- Git repository with your code

### Deployment Steps

#### Option 1: Deploy via Cloudflare Dashboard (Recommended)

1. **Push your code to a Git repository** (GitHub, GitLab, or Bitbucket)
   ```bash
   git init
   git add .
   git commit -m "Initial commit"
   git remote add origin <your-repo-url>
   git push -u origin main
   ```

2. **Connect to Cloudflare Pages**
   - Log in to [Cloudflare Dashboard](https://dash.cloudflare.com/)
   - Go to "Workers & Pages" → "Create application" → "Pages"
   - Click "Connect to Git"
   - Select your repository

3. **Configure Build Settings**
   - **Framework preset**: Astro
   - **Build command**: `npm run build`
   - **Build output directory**: `dist`
   - **Node version**: 18 or higher

4. **Deploy**
   - Click "Save and Deploy"
   - Your site will be live at `<project-name>.pages.dev`

5. **Add Custom Domain**
   - Go to your project settings → "Custom domains"
   - Add `jhwsnewport.org`
   - Follow DNS configuration instructions

#### Option 2: Deploy via Wrangler CLI

1. **Install Wrangler**
   ```bash
   npm install -g wrangler
   ```

2. **Login to Cloudflare**
   ```bash
   wrangler login
   ```

3. **Build and Deploy**
   ```bash
   npm run build
   wrangler pages deploy dist --project-name=jhws-website
   ```

### Environment Variables (if needed)
If you need to add environment variables (e.g., for Donorbox integration):
- Go to your project in Cloudflare Dashboard
- Navigate to "Settings" → "Environment variables"
- Add your variables for production and preview environments

## 🎨 Customization

### Colors
The site uses a professional color scheme defined in `src/layouts/Layout.astro`:
- Primary: `#2c5f7c` (Deep blue)
- Secondary: `#4a90a4` (Light blue)
- Accent: `#d97706` (Orange for donate button)

### Logo
Replace `public/logo.jpg` with your updated logo if needed.

### Content
Edit `src/pages/index.astro` to update page content.

## 💰 Donorbox Integration

To integrate your Donorbox account:

1. **Get your Donorbox embed code**
   - Log in to your Donorbox account
   - Go to your campaign settings
   - Copy the embed code or popup script

2. **Update the donate button**
   - Open `src/pages/index.astro`
   - Find the `<script>` section at the bottom
   - Replace the placeholder alert with your Donorbox code

Example Donorbox integration:
```javascript
<script>
  // Replace with your actual Donorbox code
  window.DonorBox = { widgetLinkClassName: 'donate-button' };
  
  const script = document.createElement('script');
  script.src = 'https://donorbox.org/widget.js';
  script.setAttribute('paypalExpress', 'false');
  document.head.appendChild(script);
</script>
```

Or use the popup method:
```javascript
<script>
  document.getElementById('donorbox-button')?.addEventListener('click', () => {
    window.open('https://donorbox.org/your-campaign-name', '_blank', 'width=600,height=700');
  });
</script>
```

## 📱 Responsive Design

The website is fully responsive and optimized for:
- Desktop (1200px+)
- Tablet (768px - 1199px)
- Mobile (< 768px)

## 🔒 Security & Performance

- Static site generation for optimal performance
- No server-side processing required
- Automatic HTTPS via Cloudflare
- Global CDN distribution
- DDoS protection included

## 📄 License

This project is created for Joshua House Inc., a 501(c)(3) non-profit organization.

## 🤝 Support

For questions or assistance, contact Joshua House Warming Shelter:
- Mail: PO Box 291, Newport, VT 05855
- Website: jhwsnewport.org (once deployed)