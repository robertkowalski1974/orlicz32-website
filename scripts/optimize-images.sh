#!/bin/bash
# Generates optimized WebP + JPEG variants into images/opt/.
# Requires: sips (macOS built-in) and cwebp (brew install webp).
# Source images are never modified. Rerunnable — overwrites outputs.
set -euo pipefail
cd "$(dirname "$0")/.."

OUT=images/opt
mkdir -p "$OUT/room1" "$OUT/room3"
TMP=$(mktemp -d)
trap 'rm -rf "$TMP"' EXIT

# variants <src> <outdir/basename> — 480w/960w WebP + 960w JPEG fallback
variants() {
  local src=$1 dst=$2 w
  for w in 480 960; do
    sips --resampleWidth $w "$src" --out "$TMP/r.jpg" >/dev/null
    cwebp -quiet -q 78 "$TMP/r.jpg" -o "${dst}-${w}.webp"
    if [ "$w" = 960 ]; then
      sips -s format jpeg -s formatOptions 75 "$TMP/r.jpg" --out "${dst}-960.jpg" >/dev/null
    fi
  done
}

# hero <src> <name> — full-width (1200w) WebP + JPEG for CSS background use
hero() {
  local src=$1 name=$2
  cwebp -quiet -q 80 "$src" -o "$OUT/hero-${name}-1200.webp"
  sips -s format jpeg -s formatOptions 75 "$src" --out "$OUT/hero-${name}-1200.jpg" >/dev/null
}

# Gallery: Room 1 (bare ordinals) and Room 3 (source folder keeps its legacy
# "cozy-retreat" name; optimized output uses the real name room3/)
for f in images/gallery/room1/*.jpg; do
  variants "$f" "$OUT/room1/$(basename "$f" .jpg)"
done
for f in images/gallery/cozy-retreat/*.jpg; do
  variants "$f" "$OUT/room3/$(basename "$f" .jpg)"
done

# Apartment card images
variants images/room1-main.jpg "$OUT/room1-main"
variants images/room3-main.jpg "$OUT/room3-main"

# Page heroes
hero images/room1-main.jpg                        home
hero images/gallery/cozy-retreat/03-kitchen.jpg   apartments
hero images/gallery/room1/02.jpg                  gallery
hero images/gallery/cozy-retreat/04-detail.jpg    zamosc
hero images/gallery/cozy-retreat/05-view.jpg      contact
hero images/room1-main.jpg                        book

echo "Done: $(find "$OUT" -type f | wc -l | tr -d ' ') files in $OUT"
