#!/bin/bash

set -x

BUCKET=s3://courses.diveintodeeplearning.org

aws s3 sync --exclude '.git/*' --exclude '*.sh' --exclude 'README.md' \
    --delete . $BUCKET --acl 'public-read'