#!/bin/bash -xe

/keenaudio/waychill/scripts/flv2mp4.sh "$1" "$2"

cp "$2" /Volumes/Multimedia/StudioA/
rm "$1"
rm "$2"