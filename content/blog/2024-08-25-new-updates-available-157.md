---
title: "New updates available"
date: 2024-08-25T11:47:20
slug: "new-updates-available-157"
categories: ["News"]
---

**openmediavault 7.4.6**

- Update locale files.
- Add UDEV rule to fix the duplicate serial number issue for Congdi 2.5-Inch USB 3.1 Type-C hard drive enclosures.
- Add UDEV rule to fix the duplicate serial number issue for Insignia 2-Bay HDD docking stations.
- Use `subtree_check` to reduce subtree attacks in the NFSv4 pseudo file system export. This can be modified via the `OMV_NFSD_V4_PSEUDO_ROOT_OPTIONS` environment variable.
- Remove support to create Ext3 file systems from the UI.
- Use of the internal quotas of Ext4 for new file systems to be created.
- Improve file system quota Salt state.
- Issue #1813: Return the configured mount point for each file system in the `FileSystemMgmt::enumerateMountedFilesystems` RPC instead of the dynamically determined one.

**openmediavault-nut 7.0.4**

- Improve log file parsing.
