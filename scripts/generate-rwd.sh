# Generate RWD sample thumbnails
# Requires webkit2png, sips, and optipng
# Assembled by Chris Van Patten, released into the wild 28 June 2012

# Laptop: 1440x900
webkit2png --clipped $1 --scale=1.0 --width=1440 --height=900 --clipwidth=1440 --clipheight=900 --filename=laptop
mv laptop-clipped.png laptop.png
sips -z 169 268 laptop.png

# Tablet: 1024x768
webkit2png --clipped $1 --scale=1.0 --width=1024 --height=768 --clipwidth=1024 --clipheight=768 --filename=tablet
mv tablet-clipped.png tablet.png
sips -z 125 165 tablet.png

# Smartphone: 320x480
webkit2png --clipped $1 --scale=1.0 --width=320 --height=480 --clipwidth=320 --clipheight=480 --filename=smartphone
mv smartphone-clipped.png smartphone.png
sips -z 60 39 smartphone.png

# Optimize all the pngs! Using imageoptim.app instead of optipng
# because it gets far better results
open -a ImageOptim.app *.png