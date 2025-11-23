# Deployment Instructions for Header Layout Options

## Branch Information
- **Branch Name**: `header-layout-options`
- **Base Branch**: `bootstrap-theme`
- **Status**: Ready for stakeholder review

## What's Been Created

### Three Complete Header Implementations

1. **Option 1 - Two-Column Layout** (index page)
   - URL: `/` or `/index.html`
   - Two-column design with expandable image lightbox
   - Best balance of features

2. **Option 2 - Background Hero** 
   - URL: `/home_option_2`
   - Image as background with overlay
   - Most dramatic scroll reduction

3. **Option 4 - Constrained Size**
   - URL: `/home_option_4`
   - Traditional layout with size limits
   - Simplest implementation

### Navigation
- Blue banner at top of each page allows switching between options
- All three pages use the same content sections below the header

## How to Deploy for Review

### Option A: Deploy to Cloudflare Pages (Recommended)

1. **Create a new Cloudflare Pages deployment** for the `header-layout-options` branch:
   - Go to your Cloudflare Pages dashboard
   - Select your project
   - Go to Settings → Builds & deployments
   - Add a new deployment branch: `header-layout-options`
   - This will create a preview URL like: `header-layout-options.jhwsnewport.pages.dev`

2. **Share the preview URLs with stakeholders**:
   - Main page (Option 1): `https://header-layout-options.jhwsnewport.pages.dev/`
   - Option 2: `https://header-layout-options.jhwsnewport.pages.dev/home_option_2`
   - Option 4: `https://header-layout-options.jhwsnewport.pages.dev/home_option_4`

### Option B: Local Development Server

1. **Clone and run locally**:
   ```bash
   cd jhws-website
   git checkout header-layout-options
   npm install
   npm run dev
   ```

2. **Share local URLs** (if on same network):
   - Option 1: `http://localhost:4321/`
   - Option 2: `http://localhost:4321/home_option_2`
   - Option 4: `http://localhost:4321/home_option_4`

### Option C: Build and Deploy to Temporary Server

1. **Build the site**:
   ```bash
   cd jhws-website
   git checkout header-layout-options
   npm run build
   ```

2. **Deploy the `dist` folder** to any web server for review

## Documentation for Stakeholders

Three comprehensive documentation files have been created:

1. **HEADER_LAYOUT_OPTIONS.md** - Detailed description of each option
2. **HEADER_MOCKUPS.md** - Visual ASCII mockups of layouts
3. **HEADER_OPTIONS_GUIDE.md** - Complete stakeholder review guide with comparison matrix

## After Stakeholder Approval

Once stakeholders select their preferred option:

1. **Update the main index page** to use the chosen header component
2. **Remove the option selector banner** from the top
3. **Delete unused header option files** (optional, for cleanup)
4. **Merge to bootstrap-theme branch**:
   ```bash
   git checkout bootstrap-theme
   git merge header-layout-options
   git push origin bootstrap-theme
   ```

## Testing Checklist

Before presenting to stakeholders, verify:

- [ ] All three options load correctly
- [ ] Navigation banner works on all pages
- [ ] Images display properly
- [ ] Lightbox functionality works (Options 1 & 4)
- [ ] Mobile responsive on all options
- [ ] All sections below header display correctly
- [ ] Donate button links work
- [ ] Ticket purchase info is visible and readable

## Current Status

✅ Branch created: `header-layout-options`
✅ All three options implemented
✅ Documentation completed
✅ Pushed to GitHub
✅ Ready for deployment and review

## Next Steps

1. Deploy to Cloudflare Pages preview environment
2. Share URLs with stakeholders
3. Gather feedback
4. Select preferred option
5. Merge to production branch

---

**Questions?** Refer to HEADER_OPTIONS_GUIDE.md for detailed information about each option.