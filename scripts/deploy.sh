#!/bin/sh

## Do a fresh build.
echo " ###"
echo " ### Bulding ..."
echo " ###"
jekyll build --incremental

## Push intelligently.
echo " ###"
echo " ### Deploying ..."
echo " ###"
rsync -rtpvz --progress --checksum --delete-after --delete-excluded  _build/html/ mpgeek@mpg:/var/www/multipurposegeek.com/html

echo " ###"
echo " ### COMPLETE!"
echo " ###"