#!/bin/sh
mkdir -p /tmp/host
mount -t 9p -o trans=virtio host /tmp/host -oversion=9p2000.L,msize=1M
