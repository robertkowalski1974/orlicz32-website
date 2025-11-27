# Apartamenty Orlicz 32 - Quarto Website

A beautiful Quarto-based website for Orlicz 32 boutique apartments in Zamość, Poland.

## 🚀 Quick Start

```bash
cd /Users/robertkowalski/Documents/orlicz32-website
quarto preview
```

This will open the website in your browser at http://localhost:4200

## 📁 Project Structure

```
orlicz32-website/
├── _quarto.yml          # Site configuration
├── index.qmd            # Homepage
├── apartments.qmd       # Apartments page
├── zamosc.qmd           # Zamość city guide
├── gallery.qmd          # Photo gallery
├── contact.qmd          # Contact page
├── custom.scss          # Brand styling (SCSS)
├── styles.css           # Additional CSS
├── images/
│   ├── logo.svg         # Site logo
│   ├── favicon.svg      # Browser favicon
│   ├── hero-*.svg       # Page hero backgrounds
│   ├── apartment-*.svg  # Apartment previews
│   ├── zamosc-*.svg     # Zamość photos
│   └── gallery/         # Gallery images
└── WIDGET-INTEGRATION.md # Guesty widget guide
```

## ✅ Current Status

| Feature | Status |
|---------|--------|
| Homepage | ✅ Complete |
| Apartments page | ✅ Complete |
| Zamość guide | ✅ Complete |
| Gallery page | ✅ Complete (with lightbox) |
| Contact page | ✅ Complete |
| Brand styling | ✅ Complete (Art Deco theme) |
| Responsive design | ✅ Complete |
| **Booking widget** | ⏳ Placeholder (needs Guesty code) |
| **Reviews widget** | ⏳ Placeholder (needs widget code) |
| **Real photos** | ⏳ SVG placeholders (needs JPGs) |

## 🔧 Next Steps

### 1. Add Real Photos

Replace SVG placeholders with actual JPG photos:

**Required images:**
- `images/hero-apartment.jpg` - Homepage hero (1920×1080px)
- `images/apartments-hero.jpg` - Apartments page hero
- `images/zamosc-hero.jpg` - Zamość page hero (Great Market Square)
- `images/apartment-living.jpg` - Living room preview
- `images/apartment-kitchen.jpg` - Kitchen preview

**Gallery images** (in `images/gallery/`):
- Apartment interiors: living, bedroom, kitchen, bathroom, etc.
- Zamość Old Town: Market Square, Town Hall, merchant houses
- Atmosphere shots: morning coffee, sunset, local food

Then update the `.qmd` files to use `.jpg` instead of `.svg`.

### 2. Integrate Guesty Lite Booking Widget

1. Get your embed code from Guesty Lite dashboard
2. Edit `index.qmd` and `apartments.qmd`
3. Replace the booking placeholder with your widget code
4. See `WIDGET-INTEGRATION.md` for detailed instructions

### 3. Add Reviews Widget

1. Choose a reviews aggregator (Elfsight, TrustIndex, etc.)
2. Configure it to pull from Booking.com, Airbnb, Google
3. Replace the testimonials placeholder in `index.qmd`

### 4. Update Contact Information

Edit `contact.qmd` to add:
- Your actual phone number
- Your email address
- Any additional contact methods

### 5. Google Maps

The embedded map in `contact.qmd` and `index.qmd` uses a placeholder.
Update with your exact coordinates for accurate directions.

## 🎨 Brand Colors

| Color | Hex | Usage |
|-------|-----|-------|
| Rich Charcoal | `#2D2926` | Headers, dark backgrounds |
| Heritage Gold | `#C9A961` | Accents, buttons, highlights |
| Bright Gold | `#D4AF37` | Hover states |
| Pure White | `#FFFFFF` | Text on dark, backgrounds |
| Warm Linen | `#F5F2ED` | Page backgrounds |
| Stone Gray | `#666666` | Secondary text |

## 📝 Typography

- **Headlines:** Georgia (serif)
- **Body:** Georgia (serif)
- **UI/Navigation:** Arial (sans-serif)

## 🚀 Deployment

### Option 1: Quarto Pub (free)
```bash
quarto publish quarto-pub
```

### Option 2: Netlify
```bash
quarto render
# Then deploy _site folder to Netlify
```

### Option 3: GitHub Pages
```bash
quarto publish gh-pages
```

## 📞 Support

For brand guidelines reference, see the project document:
`Orlicz32-Brand-Guidelines.docx`

---

*Built with ❤️ for Apartamenty Orlicz 32*
*Zamość - Pearl of the Renaissance*
