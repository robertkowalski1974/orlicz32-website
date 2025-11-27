#!/bin/bash

# Gallery SVG Placeholder Generator for Orlicz32
# Run this from the website root: ./generate-gallery-placeholders.sh

GALLERY_DIR="images/gallery"
mkdir -p "$GALLERY_DIR"

generate_svg() {
    local filename="$1"
    local title="$2"
    
    cat > "$GALLERY_DIR/$filename.svg" << EOF
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 600 450" width="600" height="450">
  <defs><linearGradient id="g1" x1="0%" y1="0%" x2="100%" y2="100%"><stop offset="0%" style="stop-color:#F5F2ED"/><stop offset="100%" style="stop-color:#E8E4DD"/></linearGradient></defs>
  <rect width="100%" height="100%" fill="url(#g1)"/>
  <rect x="50" y="50" width="500" height="350" fill="none" stroke="#C9A961" stroke-width="1" stroke-dasharray="5,5" opacity="0.5"/>
  <g opacity="0.2"><rect x="220" y="150" width="160" height="100" rx="5" fill="#2D2926"/><circle cx="260" cy="185" r="15" fill="#C9A961"/><polygon points="220,250 280,190 340,230 380,200 380,250" fill="#666"/></g>
  <text x="300" y="300" text-anchor="middle" font-family="Georgia, serif" font-size="18" fill="#2D2926">$title</text>
  <text x="300" y="325" text-anchor="middle" font-family="Arial, sans-serif" font-size="11" fill="#999">Replace with photo</text>
</svg>
EOF
    echo "Created: $filename.svg"
}

echo "=== Generating Gallery Placeholders ==="

# Apartment images
generate_svg "apt-living-1" "Living Room"
generate_svg "apt-bedroom-1" "Bedroom"
generate_svg "apt-kitchen-1" "Kitchen"
generate_svg "apt-corner" "Reading Corner"
generate_svg "apt-bathroom-1" "Bathroom"
generate_svg "apt-dining" "Dining Area"
generate_svg "apt-bedroom-2" "Bedroom Details"
generate_svg "apt-kitchen-2" "Kitchen Details"

# Zamość images
generate_svg "zamosc-rynek-1" "Great Market Square"
generate_svg "zamosc-ratusz-1" "Town Hall"
generate_svg "zamosc-kamienice-1" "Merchant Houses"
generate_svg "zamosc-details-1" "Renaissance Details"
generate_svg "zamosc-fortyfikacje" "Fortifications"
generate_svg "zamosc-katedra" "Collegiate Church"
generate_svg "zamosc-evening" "Evening in Old Town"
generate_svg "zamosc-brama" "Historic Gate"
generate_svg "zamosc-fasady" "Colorful Façades"

# Moment/atmosphere images
generate_svg "moment-coffee" "Morning Coffee"
generate_svg "moment-views" "City Views"
generate_svg "moment-stroll" "Evening Stroll"
generate_svg "moment-food" "Local Flavors"
generate_svg "moment-relax" "Relaxation"
generate_svg "moment-sunset" "Sunset"

# Root images for Zamość page
generate_svg "../zamosc-rynek1" "Market Square"
generate_svg "../zamosc-ratusz" "Town Hall"
generate_svg "../zamosc-kamienice" "Merchant Houses"

echo ""
echo "=== Complete! ==="
echo "Total gallery images: 23"
echo ""
echo "Next: Replace SVG placeholders with actual JPG photos"
