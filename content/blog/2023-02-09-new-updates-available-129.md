---
title: "New updates available"
date: 2023-02-09T20:21:12
slug: "new-updates-available-129"
categories: ["News"]
---

**openmediavault 6.3.0-2**

- Update locale files.
- Make alert panel action buttons accessible via tab-key.
- Add an infrastructure to allow plugins to append additional file systems to the file system creation page in the UI.
- Enhance the [BTRFS file system creation page](https://github.com/openmediavault/openmediavault/pull/1479) by adding support of profiles to create various RAID levels.
- [Issue #1241](https://github.com/openmediavault/openmediavault/pull/1480): Use BTRFS subvolumes for shared folders on BTRFS file systems. Snapshots can be created per shared folder. The snapshot management UI allows to create and delete those snapshots. A restore feature has not been implemented by intention because those shared folders need to be unreferenced from every service beforehand. Instead a shared folders should be created from these snapshots, which is a less error-prone approach. The snapshots are stored in the `.snapshots` folder in the root subvolume of the BTRFS file system.
- Issue #1490: Support SMB shadow copies for shared folders that are located on a BTRFS file system.

**openmediavault-ftp 6.0-3**

- Various improvements.

**openmediavault-lvm2 6.0.2**

- Update locales.
- Change order in navigation menu.
