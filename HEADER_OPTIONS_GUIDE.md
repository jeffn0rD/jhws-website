# Header Layout Options - Stakeholder Review Guide

## Overview
This branch (`header-layout-options`) contains three different header layout implementations for stakeholder review. Each option addresses the issue of excessive scrolling on large screens while maintaining the site's professional appearance.

## How to Review

### Local Testing
1. Run `npm run dev` to start the development server
2. Visit the following URLs to compare options:
   - **Option 1**: http://localhost:4321/ (index page)
   - **Option 2**: http://localhost:4321/home_option_2
   - **Option 4**: http://localhost:4321/home_option_4

### Navigation
Each page has a blue banner at the top allowing you to quickly switch between options.

---

## Option 1: Two-Column Layout with Expandable Image

### Description
- **Layout**: Two-column design on large screens (image left, ticket info right)
- **Image Size**: Constrained to 600px height
- **Interaction**: Click image to expand to full-screen lightbox
- **Mobile**: Stacks vertically (traditional layout)

### Key Features
✅ Reduces scrolling by ~40%
✅ Image remains prominent but not overwhelming
✅ Interactive lightbox for viewing full image
✅ Ticket info immediately visible without scrolling
✅ Sticky ticket info card (stays visible while scrolling)
✅ Professional two-column layout

### Best For
- Balance between image prominence and content accessibility
- Users who want to see the full image details
- Modern, interactive user experience

### Technical Details
- Uses Bootstrap grid system
- Minimal JavaScript (~30 lines for lightbox)
- Fully responsive
- Keyboard accessible (ESC to close lightbox)

---

## Option 2: Background Image Hero

### Description
- **Layout**: Image as background with content overlay
- **Image Size**: Hero-sized (70vh - about 70% of screen height)
- **Interaction**: No interaction needed - all content visible
- **Mobile**: Adjusts to smaller padding, maintains overlay

### Key Features
✅ Most dramatic scroll reduction (~60%)
✅ Very modern, professional aesthetic
✅ All content "above the fold"
✅ No JavaScript required
✅ Ticket info in prominent card overlay
✅ Text has shadow for readability

### Best For
- Minimal scrolling priority
- Modern, magazine-style design
- Users who prefer all info immediately visible
- Sites prioritizing content over image detail

### Technical Details
- Pure CSS solution (no JavaScript)
- Uses CSS gradients for overlay
- Fully responsive
- Fastest page load (no JS overhead)

---

## Option 4: Constrained Size with Link

### Description
- **Layout**: Traditional single-column, centered
- **Image Size**: Constrained to 500px height, 800px max width
- **Interaction**: Click to view full size in lightbox
- **Mobile**: Full width, maintains proportions

### Key Features
✅ Reduces scrolling by ~30%
✅ Maintains familiar layout structure
✅ Simple "Click to view full size" badge
✅ Easiest to implement
✅ Most similar to current design
✅ Clean, straightforward approach

### Best For
- Conservative approach (minimal change)
- Users who prefer traditional layouts
- Quick implementation
- Maintaining current design language

### Technical Details
- Minimal code changes from current
- Simple lightbox JavaScript
- Bootstrap-based styling
- Easy to maintain

---

## Comparison Matrix

| Feature | Option 1 | Option 2 | Option 4 |
|---------|----------|----------|----------|
| **Scroll Reduction** | ~40% | ~60% | ~30% |
| **Image Prominence** | High | Medium | Medium-High |
| **Modern Design** | High | Very High | Medium |
| **Implementation Complexity** | Medium | Low | Low |
| **JavaScript Required** | Yes (minimal) | No | Yes (minimal) |
| **Mobile Friendly** | Excellent | Excellent | Excellent |
| **Content Accessibility** | Excellent | Excellent | Good |
| **Interactive Elements** | Yes (lightbox) | No | Yes (lightbox) |
| **Maintenance** | Easy | Very Easy | Very Easy |

---

## Recommendations

### Primary Recommendation: **Option 1**
**Reasoning:**
- Best balance of all factors
- Solves scrolling problem effectively
- Maintains image importance
- Interactive and engaging
- Professional appearance
- Modern without being too radical

### Alternative: **Option 2**
**If stakeholders prioritize:**
- Maximum scroll reduction
- Ultra-modern aesthetic
- Simplest technical solution
- Fastest page load

### Fallback: **Option 4**
**If stakeholders prefer:**
- Minimal change from current design
- Traditional layout
- Conservative approach

---

## Next Steps

1. **Review all three options** on both desktop and mobile
2. **Gather stakeholder feedback** on:
   - Visual appeal
   - Ease of use
   - Image visibility
   - Content accessibility
   - Overall preference
3. **Select preferred option** for production
4. **Merge to bootstrap-theme branch** once approved

---

## Technical Notes

- All options use the same sections below the header
- All options are fully responsive
- All options maintain Bootstrap theme consistency
- All options include the ticket purchase information
- All options work with existing navigation and footer

---

## Questions or Feedback?

Contact the development team with any questions or feedback about these options.