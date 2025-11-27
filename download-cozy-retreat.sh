#!/bin/bash

# Download Cozy Retreat (Room 3) photos from Guesty
cd /Users/robertkowalski/Documents/orlicz32-website/images

echo "=== Downloading Cozy Retreat Photos from Guesty ==="

# Image 1 - Logo/Main
curl -L -o "cozy-retreat-1.jpg" "https://assets.guesty.com/image/upload/s---TQyNrkH--/v1752846962/production/687a1694b8a30a41bf5392ec/private/bv07zchfqbw88xpfoirs.jpg"

# Image 2
curl -L -o "cozy-retreat-2.jpg" "https://assets.guesty.com/image/upload/listing_images_s3/production/property-photos/37fb8bd1503fd9959a4e23de0cb63084308695d358958d97/687a4d0c544795001080eb20/14417487-0b24-4a-rowOH"

# Image 3
curl -L -o "cozy-retreat-3.jpg" "https://assets.guesty.com/image/upload/listing_images_s3/production/property-photos/37fb8bd1503fd9959a4e23de0cb63084308695d358958d97/687a4d0c544795001080eb20/e6a77f39-f319-45-27N9d"

# Image 4
curl -L -o "cozy-retreat-4.jpg" "https://assets.guesty.com/image/upload/listing_images_s3/production/property-photos/37fb8bd1503fd9959a4e23de0cb63084308695d358958d97/687a4d0c544795001080eb20/1147c269-8dc1-49-sF8T4"

echo ""
echo "=== Download Complete ==="
ls -lh cozy-retreat-*
