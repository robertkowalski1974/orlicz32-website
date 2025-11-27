#!/bin/bash

# Orlicz32 Website Image Download Script
# Downloads images from the current Wix website

cd "$(dirname "$0")/images"

echo "=== Downloading Orlicz32 Images ==="

# Create gallery directory if not exists
mkdir -p gallery

# Main apartment images from Wix
echo "Downloading main apartment images..."

# Logo (the Art Deco logo)
curl -L -o "logo-original.jpeg" "https://static.wixstatic.com/media/f0d0b3_aecf53901ba9400db82aa8db68ac1657~mv2.jpeg/v1/fill/w_560,h_392,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/f0d0b3_aecf53901ba9400db82aa8db68ac1657~mv2.jpeg"

# Kitchen image
curl -L -o "apartment-kitchen.avif" "https://static.wixstatic.com/media/f0d0b3_33a25caf5a89465f95d9afe43a6a38de~mv2.avif/v1/fill/w_600,h_450,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/f0d0b3_33a25caf5a89465f95d9afe43a6a38de~mv2.avif"

# Bathroom image
curl -L -o "apartment-bathroom.jpeg" "https://static.wixstatic.com/media/f0d0b3_7e6374f3f4d6450a8604657156cc86cf~mv2.jpeg/v1/fill/w_600,h_800,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/f0d0b3_7e6374f3f4d6450a8604657156cc86cf~mv2.jpeg"

# Room image
curl -L -o "apartment-room.png" "https://static.wixstatic.com/media/f0d0b3_f26974e1fa7640059748a82f12412d20~mv2.png/v1/fill/w_600,h_800,al_c,q_85,usm_0.66_1.00_0.01,enc_avif,quality_auto/f0d0b3_f26974e1fa7640059748a82f12412d20~mv2.png"

# Get higher resolution versions
curl -L -o "hero-apartment.jpeg" "https://static.wixstatic.com/media/f0d0b3_aecf53901ba9400db82aa8db68ac1657~mv2.jpeg/v1/fill/w_1920,h_1080,al_c,q_85,usm_0.66_1.00_0.01,enc_avif,quality_auto/f0d0b3_aecf53901ba9400db82aa8db68ac1657~mv2.jpeg"

echo ""
echo "=== Download Complete ==="
echo ""
echo "Downloaded files:"
ls -la *.jpeg *.avif *.png 2>/dev/null

echo ""
echo "NEXT STEPS:"
echo "1. Add your own high-quality apartment photos to this folder"
echo "2. Add Zamość Old Town photos (Great Market Square, Town Hall, etc.)"
echo "3. Rename photos according to README.md requirements"
echo "4. Run 'quarto preview' to test the website"
