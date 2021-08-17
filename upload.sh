#!/bin/bash

set -x

BUCKET=s3://courses.d2l.ai

aws s3 sync --exclude '.git/*' --exclude '*.sh' --exclude 'README.md' \
    _site/ $BUCKET --acl 'public-read'
