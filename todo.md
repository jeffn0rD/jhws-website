# Clean Up and Modularize JHWS Website

## Tasks

### 1. Create Modular Components
- [x] Extract navigation from BootstrapLayout.astro to Navigation.astro component
- [x] Extract footer from BootstrapLayout.astro to Footer.astro component
- [x] Update BootstrapLayout.astro to import and use the component files

### 2. Update Navigation Component
- [x] Make Navigation.astro match the current Bootstrap navigation
- [x] Ensure Donate button triggers Donorbox popup

### 3. Update Footer Component
- [x] Make Footer.astro match the current Bootstrap footer

### 4. Clean Up Unused Files
- [x] Remove bootstrap-index.astro (backup/unused)
- [x] Remove gallery-bootstrap.astro (backup/unused)
- [x] Remove gallery-original-backup.astro (backup)
- [x] Remove index-hardcoded-backup.astro (backup)
- [x] Remove index-original-backup.astro (backup)
- [x] Remove unused Header.astro (old theme component)
- [x] Remove unused Layout.astro (old theme layout)

### 5. Verify and Test
- [x] Verify index.astro uses BootstrapLayout correctly
- [x] Verify gallery.astro uses BootstrapLayout correctly
- [x] Ensure all navigation links work
- [x] Ensure Donate button triggers Donorbox popup
- [ ] Commit and push changes