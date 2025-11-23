# Visual Mockups of Header Options

## Option 1: Two-Column Layout with Expandable Image

```
┌─────────────────────────────────────────────────────────────┐
│                    LARGE SCREEN VIEW                         │
├──────────────────────────┬──────────────────────────────────┤
│                          │                                   │
│   [IMAGE]                │  Joshua House Warming Shelter    │
│   Click to               │  A part of Joshua House, Inc...  │
│   expand                 │  501 Pleasant St., Newport, VT   │
│                          │  Opening soon!                    │
│   (600px height)         │                                   │
│                          │  [Donate Button]                  │
│                          │                                   │
│                          │  ┌─────────────────────────────┐ │
│                          │  │ Ticket Purchase Info        │ │
│                          │  │ • To purchase tickets...    │ │
│                          │  │ • Bring receipt...          │ │
│                          │  │ • Also at Witches Brew      │ │
│                          │  └─────────────────────────────┘ │
└──────────────────────────┴──────────────────────────────────┘

When clicked:
┌─────────────────────────────────────────────────────────────┐
│  [X Close]                                                   │
│                                                              │
│                    [FULL SIZE IMAGE]                         │
│                                                              │
│                    (Overlay/Lightbox)                        │
│                                                              │
└─────────────────────────────────────────────────────────────┘
```

---

## Option 2: Background Image Hero

```
┌─────────────────────────────────────────────────────────────┐
│                                                              │
│        [BACKGROUND IMAGE WITH DARK OVERLAY]                 │
│                                                              │
│         Joshua House Warming Shelter                        │
│         A part of Joshua House, Inc...                      │
│         501 Pleasant St., Newport, VT                       │
│         Opening soon!                                        │
│                                                              │
│              [Donate Button]                                 │
│                                                              │
│  ┌────────────────────────────────────────────────────┐    │
│  │  Ticket Purchase Info (Semi-transparent card)      │    │
│  │  • To purchase tickets here...                     │    │
│  │  • Bring your receipt...                           │    │
│  │  • Also at Witches Brew                            │    │
│  └────────────────────────────────────────────────────┘    │
│                                                              │
└─────────────────────────────────────────────────────────────┘
                    (60-70vh height)
```

---

## Option 3: Sticky Thumbnail

```
┌─────────────────────────────────────────────────────────────┐
│  ┌──────────┐  Joshua House Warming Shelter                │
│  │ [THUMB]  │  A part of Joshua House, Inc...               │
│  │  Click   │  501 Pleasant St., Newport, VT                │
│  │  expand  │  Opening soon!                                │
│  └──────────┘                                                │
│   (Sticky)     [Donate Button]                              │
│                                                              │
│                ┌─────────────────────────────────┐          │
│                │ Ticket Purchase Info            │          │
│                │ • To purchase tickets...        │          │
│                │ • Bring receipt...              │          │
│                │ • Also at Witches Brew          │          │
│                └─────────────────────────────────┘          │
└─────────────────────────────────────────────────────────────┘

When expanded (inline):
┌─────────────────────────────────────────────────────────────┐
│  ┌──────────┐  Joshua House Warming Shelter                │
│  │ [THUMB]  │  ...content...                                │
│  │  Click   │                                                │
│  │  close   │  ┌─────────────────────────────────────────┐ │
│  └──────────┘  │                                          │ │
│                │        [EXPANDED IMAGE]                  │ │
│                │                                          │ │
│                └─────────────────────────────────────────┘ │
└─────────────────────────────────────────────────────────────┘
```

---

## Option 4: Constrained Size with Link

```
┌─────────────────────────────────────────────────────────────┐
│              Joshua House Warming Shelter                    │
│              A part of Joshua House, Inc...                  │
│              501 Pleasant St., Newport, VT                   │
│              Opening soon!                                   │
│                                                              │
│              [Donate Button]                                 │
│                                                              │
│         ┌────────────────────────────────┐                  │
│         │                                │                  │
│         │      [IMAGE - 600px max]       │                  │
│         │                                │                  │
│         └────────────────────────────────┘                  │
│              Click to view full size                         │
│                                                              │
│  ┌────────────────────────────────────────────────────┐    │
│  │  Ticket Purchase Info                              │    │
│  │  • To purchase tickets here...                     │    │
│  │  • Bring your receipt...                           │    │
│  │  • Also at Witches Brew                            │    │
│  └────────────────────────────────────────────────────┘    │
└─────────────────────────────────────────────────────────────┘
```

---

## Option 5: Split Hero with Gallery

```
┌─────────────────────────────────────────────────────────────┐
│                    LARGE SCREEN VIEW                         │
├──────────────────────────┬──────────────────────────────────┤
│                          │                                   │
│  Joshua House Warming    │   [IMAGE]                        │
│  Shelter                 │                                   │
│                          │   (Medium size)                   │
│  A part of Joshua        │                                   │
│  House, Inc...           │   [View Gallery Button]          │
│                          │                                   │
│  501 Pleasant St.        │                                   │
│  Newport, VT             │                                   │
│  Opening soon!           │                                   │
│                          │                                   │
│  [Donate Button]         │                                   │
│                          │                                   │
│  ┌────────────────────┐  │                                   │
│  │ Ticket Info        │  │                                   │
│  │ • Purchase...      │  │                                   │
│  │ • Bring receipt... │  │                                   │
│  └────────────────────┘  │                                   │
└──────────────────────────┴──────────────────────────────────┘
```

---

## Mobile View (All Options)

All options collapse to single column on mobile:

```
┌──────────────────────┐
│  Joshua House        │
│  Warming Shelter     │
│  ...info...          │
│                      │
│  [Donate Button]     │
│                      │
│  ┌────────────────┐  │
│  │                │  │
│  │    [IMAGE]     │  │
│  │                │  │
│  └────────────────┘  │
│                      │
│  ┌────────────────┐  │
│  │ Ticket Info    │  │
│  │ ...            │  │
│  └────────────────┘  │
└──────────────────────┘
```

---

## My Recommendation: Option 1

**Why Option 1 is best for your site:**

1. **Solves the scroll problem** - Image constrained to 600px height
2. **Maintains image importance** - Still prominent, just not overwhelming
3. **Interactive engagement** - Users can expand if they want to see details
4. **Professional appearance** - Two-column layout is modern and clean
5. **Content accessibility** - Ticket info immediately visible without scrolling
6. **Astro-friendly** - Minimal JavaScript, mostly CSS
7. **Mobile-responsive** - Automatically stacks on smaller screens

**Implementation complexity: Medium**
- Requires: Bootstrap grid, some custom CSS, ~30 lines of vanilla JS
- Time to implement: ~30 minutes
- Maintenance: Low (standard patterns)

Would you like me to implement Option 1, or would you prefer a different option?