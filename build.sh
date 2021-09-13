#!/bin/bash

export WITH_GMS=true

cd /mnt/disk1/$rom

./rom-build.sh -t $buildtype $device > build.log

cd out/target/product/$device
rclone copy pa-ruby-1-vayu-*-dev.zip drive:ROMs/vayu/PA/11