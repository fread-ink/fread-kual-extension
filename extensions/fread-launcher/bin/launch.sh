#!/bin/sh

if [ ! -d "/mnt/us/fread" ]; then
    exit 1
fi

if [ ! -f "/mnt/us/fread/uImage" ]; then
    exit 1
fi

if [ ! -f "/mnt/us/fread/fread.ext4" ]; then
    exit 1
fi

cd /mnt/us/fread/
./kexec --type=uImage -l ./uImage # load the kernel
./kexec -e # boot the kernel
