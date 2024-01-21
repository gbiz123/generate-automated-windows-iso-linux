#!/bin/bash

# Download Windows ISO 
# For other Windows images:
# 	https://www.microsoft.com/en-us/software-download/windows10
curl -L 'https://software.download.prss.microsoft.com/dbazure/Win10_22H2_English_x64v1.iso?t=6581e2e7-d916-4200-8190-6828a7e33a09&e=1705909660&h=3cd386b1d91395baa96b6fe52e12229fab8b64cf1f07a80228928c389ead697f' -o Windows10_x86_64_English.iso

mkdir win10_iso
mkdir win10_iso_modified
sudo mount -o loop Windows10_x86_64_English.iso win10_iso
cp -R win10_iso/* win10_iso_modified
cp Autounattend.xml win10_iso_modified

# Make an ISO
# Ref: https://adminthing.blogspot.com/2020/06/modify-windows-ISO.html
mkisofs \
	-bboot/etfsboot.com \
	-no-emul-boot \
	-boot-load-seg 1984 \
	-boot-load-size 8 \
	-iso-level 2 \
	-J \
	-l \
	-D \
	-N \
	-joliet-long \
	-allow-limited-size \
	-relaxed-filenames \
	-V "WINSP" \
	-o Win10_English_x86_64_Autounattend.iso \
	./win10_iso_modified

sudo umount win10_iso
