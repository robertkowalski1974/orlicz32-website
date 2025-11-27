#!/bin/bash

# Orlicz32 - Download images from Wix
# Run this script from your website folder

cd "$(dirname "$0")/images"

echo "=== Downloading Orlicz32 Images from Wix ==="
echo ""

# Logo (Art Deco)
echo "1. Downloading logo..."
curl -L -o "logo-from-wix.jpeg" "https://static.wixstatic.com/media/f0d0b3_aecf53901ba9400db82aa8db68ac1657~mv2.jpeg/v1/fill/w_1200,h_840,al_c,q_85,enc_auto/f0d0b3_aecf53901ba9400db82aa8db68ac1657~mv2.jpeg"

# Kitchen
echo "2. Downloading kitchen..."
curl -L -o "apartment-kitchen-wix.avif" "https://static.wixstatic.com/media/f0d0b3_33a25caf5a89465f95d9afe43a6a38de~mv2.avif/v1/fill/w_1200,h_900,al_c,q_85,enc_auto/f0d0b3_33a25caf5a89465f95d9afe43a6a38de~mv2.avif"

# Bathroom
echo "3. Downloading bathroom..."
curl -L -o "apartment-bathroom-wix.jpeg" "https://static.wixstatic.com/media/f0d0b3_7e6374f3f4d6450a8604657156cc86cf~mv2.jpeg/v1/fill/w_1200,h_1600,al_c,q_85,enc_auto/f0d0b3_7e6374f3f4d6450a8604657156cc86cf~mv2.jpeg"

# Room
echo "4. Downloading room..."
curl -L -o "apartment-room-wix.png" "https://static.wixstatic.com/media/f0d0b3_f26974e1fa7640059748a82f12412d20~mv2.png/v1/fill/w_1200,h_1600,al_c,q_90,enc_auto/f0d0b3_f26974e1fa7640059748a82f12412d20~mv2.png"

echo ""
echo "=== Download Complete ==="
echo ""
ls -lh *-wix.*

echo ""
echo "NOTE: Your Wix site only has 4 images."
echo "You'll need more photos for the full website:"
echo "  - Hero backgrounds"
echo "  - Gallery images (8+ apartment shots)"
echo "  - Zamość Old Town photos"
echo ""
echo "Consider taking/sourcing additional photos of:"
echo "  - Living room, bedroom, dining area"
echo "  - Zamość Great Market Square"
echo "  - Town Hall, arcaded houses"
echo "  - Morning/evening atmosphere shots"
