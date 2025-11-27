# Guesty Lite Widget Integration Guide

This guide explains how to integrate your Guesty Lite booking widget and reviews widget into the Orlicz32 Quarto website.

## 1. Booking Widget Integration

### Getting Your Guesty Lite Embed Code

1. Sign in to your Guesty Lite account
2. Navigate to **Channels** → **Booking website**
3. Click the **⋮** menu next to your Booking Website
4. Select **"Connect to external website"**
5. Copy the provided embed code snippet

### Adding to the Website

The booking widget placeholder is located in two files:
- `index.qmd` (homepage)
- `apartments.qmd` (apartments page)

**Find this section:**
```html
<!-- GUESTY LITE BOOKING WIDGET PLACEHOLDER -->
::: {.booking-placeholder}
::: {.placeholder-content}
...
:::
:::
<!-- END PLACEHOLDER -->
```

**Replace it with your Guesty embed code:**
```html
<!-- GUESTY LITE BOOKING WIDGET -->
<div id="guesty-booking-widget">
  <!-- Paste your Guesty Lite embed code here -->
  <script src="YOUR_GUESTY_SCRIPT_URL"></script>
</div>
<!-- END GUESTY WIDGET -->
```

### Styling the Widget

To match the Orlicz32 brand, add custom CSS overrides in `styles.css`:

```css
/* Guesty Widget Brand Overrides */
#guesty-booking-widget {
  font-family: Georgia, serif;
}

/* Primary buttons */
#guesty-booking-widget button,
#guesty-booking-widget .btn-primary {
  background-color: #C9A961 !important;
  color: #2D2926 !important;
  border: none !important;
  border-radius: 0 !important;
  font-family: Arial, sans-serif !important;
  text-transform: uppercase !important;
  letter-spacing: 0.1em !important;
}

#guesty-booking-widget button:hover,
#guesty-booking-widget .btn-primary:hover {
  background-color: #D4AF37 !important;
}

/* Form inputs */
#guesty-booking-widget input,
#guesty-booking-widget select {
  border: 1px solid rgba(201, 169, 97, 0.3) !important;
  border-radius: 0 !important;
  font-family: Georgia, serif !important;
}

#guesty-booking-widget input:focus,
#guesty-booking-widget select:focus {
  border-color: #C9A961 !important;
  box-shadow: none !important;
}

/* Calendar styling */
#guesty-booking-widget .calendar-day.selected {
  background-color: #C9A961 !important;
}

/* Links */
#guesty-booking-widget a {
  color: #C9A961 !important;
}
```

---

## 2. Reviews/Testimonials Widget Integration

### Options for Review Aggregation

You can use various review aggregation widgets:

1. **Elfsight** - All-in-one reviews widget
2. **TrustIndex** - Aggregates reviews from multiple platforms
3. **Repuso** - Social proof widgets
4. **ReviewsOnMyWebsite** - Multi-platform aggregator

### Adding the Widget

**Find this section in `index.qmd`:**
```html
<!-- TESTIMONIAL WIDGET PLACEHOLDER -->
::: {.testimonial-placeholder}
...
:::
<!-- END PLACEHOLDER -->
```

**Replace with your reviews widget code:**
```html
<!-- REVIEWS WIDGET -->
<div class="review-widget-container">
  <!-- Paste your review aggregation widget code here -->
  <script src="YOUR_REVIEWS_WIDGET_URL"></script>
</div>
<!-- END REVIEWS WIDGET -->
```

### Styling Reviews Widget

Add to `styles.css`:

```css
/* Reviews Widget Brand Overrides */
.review-widget-container {
  padding: 2rem;
  background-color: #FFFFFF;
}

/* Star ratings */
.review-widget-container .star,
.review-widget-container .rating-star {
  color: #C9A961 !important;
}

/* Review text */
.review-widget-container .review-text,
.review-widget-container .testimonial-text {
  font-family: Georgia, serif !important;
  font-style: italic;
  color: #2D2926 !important;
}

/* Reviewer name */
.review-widget-container .reviewer-name,
.review-widget-container .author-name {
  font-family: Arial, sans-serif !important;
  color: #666666 !important;
  text-transform: uppercase;
  letter-spacing: 0.05em;
  font-size: 0.85rem;
}
```

---

## 3. Custom Code in Guesty Booking Website

If you want to add custom CSS to your Guesty Booking Website itself:

1. Go to **Channels** → **Booking website**
2. Click **Edit Booking Website**
3. Under **"Custom code snippet"**, toggle on custom code
4. Add your brand CSS:

```html
<style>
  /* Orlicz32 Brand Colors */
  :root {
    --primary-color: #C9A961;
    --secondary-color: #2D2926;
    --background-color: #F5F2ED;
  }
  
  body {
    font-family: Georgia, serif;
    background-color: var(--background-color);
  }
  
  /* Add more overrides as needed */
</style>
```

---

## 4. Testing

After integrating widgets:

1. **Preview locally:** Run `quarto preview` in the website folder
2. **Check responsiveness:** Test on mobile, tablet, and desktop
3. **Test booking flow:** Complete a test booking to ensure it works
4. **Verify reviews:** Confirm reviews are loading from all connected platforms

---

## Brand Reference

When styling widgets, use these brand colors:

| Color | Hex | Usage |
|-------|-----|-------|
| Rich Charcoal | #2D2926 | Backgrounds, text |
| Heritage Gold | #C9A961 | Buttons, accents, stars |
| Bright Gold | #D4AF37 | Hover states |
| Pure White | #FFFFFF | Backgrounds |
| Warm Linen | #F5F2ED | Page backgrounds |
| Stone Gray | #666666 | Secondary text |

**Typography:**
- Headlines: Georgia, serif
- UI/Buttons: Arial, sans-serif
- Body: Georgia, serif (11-12pt)

---

## Support

For Guesty-specific issues, refer to:
- [Guesty Lite Help Center](https://help-lite.guesty.com)
- [Embedding Booking Website](https://help-lite.guesty.com/hc/en-gb/articles/24925238847261)

For website issues, check the Quarto documentation:
- [Quarto Websites](https://quarto.org/docs/websites/)
