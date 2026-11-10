---
title: "4k alignment"
date: 2011-02-01T23:28:58
slug: "4k-alignment"
categories: ["Misc"]
---

Currently i’m a little bit confused. I’m trying to take care about the correct 4k alignment to get best performance for new HDDs with size > 2TiB. I’m using the following command till now, but i know it is not the optimal setting, but how to tell parted to auto-align the partition?

parted -s — ${device} mklabel gpt mkpart primary 0 -1

Using

parted -s -a optimal — ${device} mklabel gpt mkpart primary 0s -1s

does not fix the problem. Everytime the partition layout looks like

# fdisk -lu /dev/sdd
WARNING: GPT (GUID Partition Table) detected on ‘/dev/sdd’! The util fdisk doesn’t support GPT. Use GNU Parted.
Disk /dev/sdd: 106 MB, 106954752 bytes
255 heads, 63 sectors/track, 13 cylinders, total 208896 sectors
Units = sectors of 1 \* 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disk identifier: 0x00000000
Device Boot      Start         End      Blocks   Id  System
/dev/sdd1               1      208895      104447+  ee  GPT
Partition 1 has different physical/logical beginnings (non-Linux?):
phys=(0, 0, 1) logical=(0, 0, 2)
Partition 1 has different physical/logical endings:
phys=(1023, 254, 63) logical=(13, 0, 51)

which is not optimal. Any tipps?
