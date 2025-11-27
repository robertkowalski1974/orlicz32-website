#!/bin/bash

# Download Cozy Retreat (Room 3) photos from Airbnb
cd /Users/robertkowalski/Documents/orlicz32-website/images

mkdir -p gallery/cozy-retreat

echo "=== Downloading Cozy Retreat Photos from Airbnb ==="

curl -L -o "gallery/cozy-retreat/01-living.jpg" "https://a0.muscache.com/im/pictures/miso/Hosting-908338363400216391/original/14417487-0b24-4a65-97cc-21e02bb6e1d8.jpeg?im_w=1200"
curl -L -o "gallery/cozy-retreat/02-bedroom.jpg" "https://a0.muscache.com/im/pictures/miso/Hosting-908338363400216391/original/e6a77f39-f319-45f5-a4ad-846bfce07cf1.jpeg?im_w=1200"
curl -L -o "gallery/cozy-retreat/03-kitchen.jpg" "https://a0.muscache.com/im/pictures/miso/Hosting-908338363400216391/original/1147c269-8dc1-4981-a66a-5545aac742c4.jpeg?im_w=1200"
curl -L -o "gallery/cozy-retreat/04-detail.jpg" "https://a0.muscache.com/im/pictures/miso/Hosting-908338363400216391/original/750c201d-ae27-4802-bb77-1db8f863b620.jpeg?im_w=1200"
curl -L -o "gallery/cozy-retreat/05-view.jpg" "https://a0.muscache.com/im/pictures/miso/Hosting-908338363400216391/original/f1451ed6-bd19-460d-a58c-26a862e76c39.jpeg?im_w=1200"
curl -L -o "gallery/cozy-retreat/06-room.jpg" "https://a0.muscache.com/im/pictures/miso/Hosting-908338363400216391/original/1f1966de-f092-45a2-9bdd-fecf771035e1.jpeg?im_w=1200"
curl -L -o "gallery/cozy-retreat/07-bathroom.jpg" "https://a0.muscache.com/im/pictures/miso/Hosting-908338363400216391/original/56d732d3-a6a5-4f53-9ed5-86cc2d2113dc.jpeg?im_w=1200"
curl -L -o "gallery/cozy-retreat/08-interior.jpg" "https://a0.muscache.com/im/pictures/miso/Hosting-908338363400216391/original/d11aab77-e185-41f7-8df0-3e0ad43d64ed.jpeg?im_w=1200"
curl -L -o "gallery/cozy-retreat/09-space.jpg" "https://a0.muscache.com/im/pictures/miso/Hosting-908338363400216391/original/9e496b32-08ee-47f2-9a1c-d52d94c46968.jpeg?im_w=1200"
curl -L -o "gallery/cozy-retreat/10-amenity.jpg" "https://a0.muscache.com/im/pictures/miso/Hosting-908338363400216391/original/11e97086-3bed-4a82-97f8-437a68ca2175.jpeg?im_w=1200"
curl -L -o "gallery/cozy-retreat/11-area.jpg" "https://a0.muscache.com/im/pictures/miso/Hosting-908338363400216391/original/2cc543ed-c43e-4690-82e6-17e88f4b2c67.jpeg?im_w=1200"
curl -L -o "gallery/cozy-retreat/12-corner.jpg" "https://a0.muscache.com/im/pictures/miso/Hosting-908338363400216391/original/f476e79e-75e5-40ae-86e5-e506b68df2cc.jpeg?im_w=1200"
curl -L -o "gallery/cozy-retreat/13-feature.jpg" "https://a0.muscache.com/im/pictures/miso/Hosting-908338363400216391/original/30a46c37-a679-4c48-8bc9-3c238eca1233.jpeg?im_w=1200"
curl -L -o "gallery/cozy-retreat/14-extra.jpg" "https://a0.muscache.com/im/pictures/miso/Hosting-908338363400216391/original/6f735090-5584-419f-94b7-9377ede55541.jpeg?im_w=1200"
curl -L -o "gallery/cozy-retreat/15-final.jpg" "https://a0.muscache.com/im/pictures/miso/Hosting-908338363400216391/original/bc30f662-6dfb-47ca-b792-5c000ebbdc9f.jpeg?im_w=1200"

echo ""
echo "=== Download Complete ==="
ls -lh gallery/cozy-retreat/
