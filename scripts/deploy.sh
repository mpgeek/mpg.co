#!/bin/sh

## Do a fresh build.
echo " >> Bulding ..."
jekyll build --incremental

## Push intelligently.
echo " >> Deploying ..."
rsync -rtpvz --progress --checksum --delete-after --delete-excluded  _build/html/ mpgeek@mpg:/var/www/multipurposegeek.com/html

echo " ## COMPLETE!"
