# JHWS Website - Modular Structure

## Overview
The JHWS website now uses a clean, modular Astro structure with reusable components.

## Directory Structure

```
src/
├── components/          # Reusable UI components
│   ├── Footer.astro    # Site footer with copyright and contact info
│   └── Navigation.astro # Main navigation bar with Donorbox integration
├── layouts/            # Page layout templates
│   └── BootstrapLayout.astro # Main layout using Bootstrap theme
└── pages/              # Website pages (routes)
    ├── index.astro     # Home page
    └── gallery.astro   # Renovation progress gallery
```

## Component Details

### Navigation.astro
- Bootstrap-based responsive navigation bar
- Fixed to top of page
- Includes links to Gallery and Contact sections
- **Donate button** triggers Donorbox popup (uses `dbox-donation-button` class)
- Mobile-friendly hamburger menu

### Footer.astro
- Dark footer with organization information
- Displays 501(c)(3) status and founding year
- Support email link for website issues
- Copyright notice with dynamic year

### BootstrapLayout.astro
- Main layout wrapper for all pages
- Imports Navigation and Footer components
- Includes all Bootstrap CSS/JS dependencies
- Includes Donorbox popup script
- Provides `<slot />` for page content

## Page Structure

### index.astro (Home Page)
- Uses BootstrapLayout
- Contains all home page sections:
  - Hero/Masthead with logo
  - Mission statement
  - Opening date information
  - Donation section
  - Contact information with grid layout

### gallery.astro (Gallery Page)
- Uses BootstrapLayout
- Displays renovation progress images
- Lightbox-style image viewer

## Key Features

1. **Modular Components**: Navigation and Footer are separate, reusable components
2. **Single Layout**: BootstrapLayout provides consistent structure across all pages
3. **Clean Code**: No backup files or unused components
4. **Donorbox Integration**: Donate button in navigation triggers popup donation form
5. **Responsive Design**: Bootstrap-based responsive layout for all screen sizes

## Making Changes

### To update the navigation:
Edit `src/components/Navigation.astro`

### To update the footer:
Edit `src/components/Footer.astro`

### To add a new page:
1. Create new `.astro` file in `src/pages/`
2. Import and use `BootstrapLayout`
3. Add navigation link in `Navigation.astro` if needed

### To modify global layout:
Edit `src/layouts/BootstrapLayout.astro`

## Removed Files

The following backup and unused files have been removed:
- `bootstrap-index.astro` (backup)
- `gallery-bootstrap.astro` (backup)
- `gallery-original-backup.astro` (backup)
- `index-hardcoded-backup.astro` (backup)
- `index-original-backup.astro` (backup)
- `Header.astro` (old theme component)
- `Layout.astro` (old theme layout)

The repository is now clean and uses only the Bootstrap theme with modular components.