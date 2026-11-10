---
title: "New update available"
date: 2023-06-13T18:36:23
slug: "new-update-available-220"
categories: ["News"]
---

**openmediavault 6.4.4**

- Issue #420: Fix SMB issue with Btrfs subvolumes. The incorrect displayed share size in Windows should be fixed as well. Samba will call `omv-btrfs-dfree` to fetch the disk stats and cache them for 30 seconds.
