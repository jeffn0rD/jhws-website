# Color Customization Guide for Bootstrap Theme

## 🎨 Overview

The Bootstrap theme uses a color system based on CSS variables. You can easily change colors by editing the `public/bootstrap-css/styles.css` file.

## 📍 Main Color Variables

The primary colors are defined at the top of the CSS file (lines 14-43). Here are the key ones:

### Current Colors
```css
--bs-primary: #2937f0;    /* Main blue color */
--bs-secondary: #9f1ae2;  /* Purple accent */
--bs-blue: #2937f0;
--bs-purple: #9f1ae2;
```

### Gradient Colors (for circles and backgrounds)
```css
/* Line 10984-10987 and 11096-11099 */
.gradient-start-color {
  stop-color: #2937f0;  /* Start of gradient (blue) */
}
.gradient-end-color {
  stop-color: #9f1ae2;  /* End of gradient (purple) */
}
```

## 🔧 How to Change Colors

### Method 1: Quick Color Change (Recommended)

Edit `public/bootstrap-css/styles.css` and find/replace these values:

**To change to your organization's colors (example: teal/green theme):**

1. **Find and replace PRIMARY color** (`#2937f0` → your color):
   ```bash
   # Replace all instances of #2937f0 with your primary color
   # Example: #2c5f7c (your current teal)
   ```

2. **Find and replace SECONDARY color** (`#9f1ae2` → your color):
   ```bash
   # Replace all instances of #9f1ae2 with your secondary color
   # Example: #4a90a4 (your current light blue)
   ```

### Method 2: Using Your Current Brand Colors

Based on your original site, here are your brand colors:

```css
/* Your original colors from the custom theme */
Primary (Deep Blue): #2c5f7c
Secondary (Light Blue): #4a90a4
Accent (Orange): #d97706
```

**To apply these to the Bootstrap theme:**

1. Open `public/bootstrap-css/styles.css`

2. **Replace line 37** (primary color):
   ```css
   --bs-primary: #2c5f7c;  /* Changed from #2937f0 */
   ```

3. **Replace line 38** (secondary color):
   ```css
   --bs-secondary: #4a90a4;  /* Changed from #9f1ae2 */
   ```

4. **Replace gradient start color** (around line 10985):
   ```css
   .features-device-mockup .circle .gradient-start-color {
     stop-color: #2c5f7c;  /* Changed from #2937f0 */
   }
   ```

5. **Replace gradient end color** (around line 10988):
   ```css
   .features-device-mockup .circle .gradient-end-color {
     stop-color: #4a90a4;  /* Changed from #9f1ae2 */
   }
   ```

6. **Replace masthead gradient start** (around line 11097):
   ```css
   .masthead .masthead-device-mockup .circle .gradient-start-color {
     stop-color: #2c5f7c;  /* Changed from #2937f0 */
   }
   ```

7. **Replace masthead gradient end** (around line 11100):
   ```css
   .masthead .masthead-device-mockup .circle .gradient-end-color {
     stop-color: #4a90a4;  /* Changed from #9f1ae2 */
   }
   ```

8. **Replace shape colors** (around lines 10995 and 11003):
   ```css
   .features-device-mockup .shape-1 {
     fill: #2c5f7c;  /* Changed from #2937f0 */
   }
   .features-device-mockup .shape-2 {
     fill: #2c5f7c;  /* Changed from #2937f0 */
   }
   ```

### Method 3: Automated Find & Replace

Use your code editor's find and replace feature:

**Find:** `#2937f0`  
**Replace with:** `#2c5f7c` (your primary color)

**Find:** `#9f1ae2`  
**Replace with:** `#4a90a4` (your secondary color)

## 🎨 Complete Color Palette

Here's a complete color palette you can customize:

```css
/* In public/bootstrap-css/styles.css around lines 14-43 */

:root {
  /* Primary Colors */
  --bs-primary: #2c5f7c;      /* Your main brand color */
  --bs-secondary: #4a90a4;    /* Your secondary color */
  
  /* Accent Colors */
  --bs-success: #198754;      /* Green for success messages */
  --bs-info: #0dcaf0;         /* Light blue for info */
  --bs-warning: #ffc107;      /* Yellow for warnings */
  --bs-danger: #dc3545;       /* Red for errors */
  
  /* Neutral Colors */
  --bs-light: #f8f9fa;        /* Light gray background */
  --bs-dark: #212529;         /* Dark text/backgrounds */
  
  /* Grays */
  --bs-gray-100: #f8f9fa;
  --bs-gray-200: #e9ecef;
  --bs-gray-300: #dee2e6;
  --bs-gray-400: #ced4da;
  --bs-gray-500: #adb5bd;
  --bs-gray-600: #6c757d;
  --bs-gray-700: #495057;
  --bs-gray-800: #343a40;
  --bs-gray-900: #212529;
}
```

## 🔍 Where Colors Are Used

### Primary Color (`--bs-primary`)
- Navigation donate button
- Main call-to-action buttons
- Links
- Gradient backgrounds (start color)
- Circle decorations

### Secondary Color (`--bs-secondary`)
- Gradient backgrounds (end color)
- Hover states
- Accent elements

### Other Colors
- **Success** (`--bs-success`): Success messages, positive actions
- **Warning** (`--bs-warning`): Warnings, caution messages
- **Danger** (`--bs-danger`): Errors, delete actions
- **Info** (`--bs-info`): Information messages
- **Light** (`--bs-light`): Section backgrounds
- **Dark** (`--bs-dark`): Footer, dark sections

## 📝 Step-by-Step Example

Let's change to a warm color scheme (orange/red):

1. **Open the file:**
   ```bash
   public/bootstrap-css/styles.css
   ```

2. **Find line 37 and change:**
   ```css
   --bs-primary: #d97706;  /* Orange */
   ```

3. **Find line 38 and change:**
   ```css
   --bs-secondary: #f59e0b;  /* Light orange */
   ```

4. **Find all gradient colors and update:**
   ```css
   /* Around lines 10985, 10988, 11097, 11100 */
   stop-color: #d97706;  /* For start colors */
   stop-color: #f59e0b;  /* For end colors */
   ```

5. **Find shape fills and update:**
   ```css
   /* Around lines 10995, 11003 */
   fill: #d97706;
   ```

6. **Save the file**

7. **Rebuild the site:**
   ```bash
   npm run build
   ```

8. **Push to GitHub:**
   ```bash
   git add public/bootstrap-css/styles.css
   git commit -m "Update color scheme"
   git push origin bootstrap-theme
   ```

## 🎯 Quick Color Schemes

### Option 1: Your Original Brand Colors (Teal/Blue)
```css
--bs-primary: #2c5f7c;
--bs-secondary: #4a90a4;
```

### Option 2: Warm (Orange/Red)
```css
--bs-primary: #d97706;
--bs-secondary: #f59e0b;
```

### Option 3: Green/Nature
```css
--bs-primary: #059669;
--bs-secondary: #10b981;
```

### Option 4: Purple/Violet
```css
--bs-primary: #7c3aed;
--bs-secondary: #a78bfa;
```

### Option 5: Navy/Professional
```css
--bs-primary: #1e40af;
--bs-secondary: #3b82f6;
```

## 🔄 Testing Your Changes

After changing colors:

1. **Build locally:**
   ```bash
   cd jhws-website
   npm run build
   ```

2. **Preview locally:**
   ```bash
   npm run dev
   ```
   Visit: `http://localhost:4321/bootstrap-index`

3. **Check these elements:**
   - [ ] Navigation donate button
   - [ ] Hero section buttons
   - [ ] Gradient backgrounds
   - [ ] Circle decorations
   - [ ] Links and hover states
   - [ ] Card borders
   - [ ] Footer links

## 💡 Pro Tips

1. **Use a color picker** to find hex codes: https://htmlcolorcodes.com/

2. **Check contrast** for accessibility: https://webaim.org/resources/contrastchecker/

3. **Keep gradients subtle**: Use colors that are close in hue for smooth gradients

4. **Test on mobile**: Colors may appear different on smaller screens

5. **Save original values**: Keep a backup of the original CSS before making changes

## 🆘 Troubleshooting

### Colors not changing?
1. Clear browser cache (Ctrl+Shift+R or Cmd+Shift+R)
2. Rebuild the site: `npm run build`
3. Check if you edited the correct file: `public/bootstrap-css/styles.css`

### Gradients look wrong?
- Make sure both gradient-start-color and gradient-end-color are updated
- Check that colors are in hex format (#rrggbb)

### Some elements still show old colors?
- Use find & replace to catch all instances
- Check for inline styles in the HTML files

## 📚 Additional Resources

- **Color Palette Generator**: https://coolors.co/
- **Material Design Colors**: https://materialui.co/colors
- **Tailwind CSS Colors**: https://tailwindcss.com/docs/customizing-colors
- **Adobe Color**: https://color.adobe.com/

---

**Need help?** The main colors to change are:
1. `--bs-primary` (line 37)
2. `--bs-secondary` (line 38)
3. Gradient colors (lines 10985, 10988, 11097, 11100)
4. Shape fills (lines 10995, 11003)

Change these 8 values and you'll have a completely different color scheme!