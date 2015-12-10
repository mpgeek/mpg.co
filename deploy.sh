#!/bin/sh

rsync -rtpvz --progress --checksum --delete-after --delete-excluded  _build/html/ mpgeek@mpg:/var/www/multipurposegeek.com/html