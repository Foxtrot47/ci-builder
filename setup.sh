#!/bin/bash

cd /mnt/disk1/$rom

if [ $DO_SYNC = true ]
then
    repo sync -c --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync -j 30 || repo sync -c --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync -j 8
fi