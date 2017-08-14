#!/bin/bash -xe

# input stream
SRC="$1"

# output dest
DST="$2"

# up front options
#OPTS='-loglevel info -framerate 15'
OPTS='-y'

# video options
VOPTS='-vcodec copy -movflags +faststart'

# audio options
AOPTS='-acodec copy'

# extraoptions
EOPTS=''

echo "Transcoding $SRC to $DST"

ffmpeg $OPTS -i "$SRC" $AOPTS $VOPTS $EOPTS "$DST"
