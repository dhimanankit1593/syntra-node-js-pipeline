#!/bin/bash

# this script will take periodic backups

src= "/home/ubuntu/dockernodeapp"
dest="/home/ubuntu/dockernodeapp"

timestamp=$(date '+%Y-%m-%d')

zip  "$dest/backup-$timestamp.zip" $src

aws s3 sync "$dest" s3://syntra-in-on-shot

echo "backup completed and uploaded on s3"
