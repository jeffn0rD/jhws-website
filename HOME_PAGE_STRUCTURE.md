# Home Page Component Structure

## Overview
The home page has been refactored into modular, reusable components organized in the `src/components/home/` directory.

## Component Breakdown

### Header.astro
**Location:** `src/components/home/Header.astro`
**Purpose:** Main hero/masthead section
**Content:**
- Site title and tagline
- Organization information (501c3, address)
- "Opening soon!" message
- "Support Our Mission" button (links to #donate)
- Logo image

### Section1.astro
**Location:** `src/components/home/Section1.astro`
**Purpose:** JHWS Introduction (Aside)
**Content:**
- Introduction to Joshua House Warming Shelter
- Advisory Board information
- Partner organizations list

### Section2.astro
**Location:** `src/components/home/Section2.astro`
**Purpose:** Opening Date Information
**Content:**
- "Renovation in progress" badge
- Target opening date (November 2025)
- Link to project gallery

### Section3.astro
**Location:** `src/components/home/Section3.astro`
**Purpose:** Renovation Progress
**Content:**
- Renovation status update
- Deconstruction start date
- Link to project gallery

### Section4.astro
**Location:** `src/components/home/Section4.astro`
**Purpose:** Contact Information (Get In Touch)
**Content:**
- Contact grid with 6 items:
  1. Carpentry & Building Materials - Rick Ufford-Chase
  2. Overnight Volunteer Training - Casey Winterson
  3. Misc. Items to Donate - Denise Niemira
  4. Funding & Fundraisers - Tim Daley
  5. Email - info@jhwsnewport.org
  6. Mailing Address - PO Box 291, Newport, VT

### Section5.astro
**Location:** `src/components/home/Section5.astro`
**Purpose:** Donation Section
**Content:**
- Two donation options:
  1. Online donation via Donorbox
  2. Mail-in donation with address

## Home Page Structure

The main `index.astro` file now simply imports and arranges these components:

```astro
---
import BootstrapLayout from '../layouts/BootstrapLayout.astro';
import Header from '../components/home/Header.astro';
import Section1 from '../components/home/Section1.astro';
import Section2 from '../components/home/Section2.astro';
import Section3 from '../components/home/Section3.astro';
import Section4 from '../components/home/Section4.astro';
import Section5 from '../components/home/Section5.astro';
---

<BootstrapLayout title="Joshua House Warming Shelter - Home">
  <Header />
  <Section1 />
  <Section2 />
  <Section3 />
  <Section4 />
  <Section5 />
</BootstrapLayout>
```

## Benefits of This Structure

1. **Modularity**: Each section is self-contained and can be edited independently
2. **Reusability**: Sections can be reused on other pages if needed
3. **Maintainability**: Easy to find and update specific content
4. **Organization**: Clear separation of concerns
5. **Flexibility**: Easy to reorder, add, or remove sections

## Making Changes

### To edit a specific section:
Navigate to `src/components/home/` and edit the corresponding file:
- `Header.astro` - Hero section
- `Section1.astro` - JHWS introduction
- `Section2.astro` - Opening date
- `Section3.astro` - Renovation progress
- `Section4.astro` - Contact information
- `Section5.astro` - Donation section

### To reorder sections:
Edit `src/pages/index.astro` and change the order of component imports

### To add a new section:
1. Create `Section6.astro` in `src/components/home/`
2. Import it in `src/pages/index.astro`
3. Add `<Section6 />` in the desired position

### To remove a section:
1. Remove the import from `src/pages/index.astro`
2. Remove the component tag from the template
3. Optionally delete the component file

## Directory Structure

```
src/
├── components/
│   ├── home/              # Home page sections
│   │   ├── Header.astro
│   │   ├── Section1.astro
│   │   ├── Section2.astro
│   │   ├── Section3.astro
│   │   ├── Section4.astro
│   │   └── Section5.astro
│   ├── Footer.astro       # Site footer
│   └── Navigation.astro   # Site navigation
├── layouts/
│   └── BootstrapLayout.astro
└── pages/
    ├── index.astro        # Home page (imports home components)
    └── gallery.astro      # Gallery page
```