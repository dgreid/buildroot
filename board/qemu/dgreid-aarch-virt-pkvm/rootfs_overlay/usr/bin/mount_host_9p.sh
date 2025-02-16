#!/usr/bin/env sh

mkdir -p /scratch /var/empty
mount -t 9p -o trans=virtio,version=9p2000.L,msize=1024M fsScratch /scratch
