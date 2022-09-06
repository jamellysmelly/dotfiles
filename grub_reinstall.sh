#!/usr/bin/env bash

# install grub to disk
grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GRUB

# generate grub config
grub-mkconfig -o /boot/grub/grub.cfg
