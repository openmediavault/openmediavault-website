---
title: "New updates available"
date: 2025-05-09T09:46:34
slug: "new-updates-available-171"
categories: ["News"]
---

**openmediavault 7.7.7**

- Display BTRFS details for each device of the filesystem.
- Issue #1952: Fix bug in `openmediavault.fs.Filesystem.parent_device_file` Python method. This affects NVMe devices, for example.

**openmediavault-diskstats 7.0.3**

- Update locale files.
- Issue #1952: Fix bug in `openmediavault.fs.Filesystem.parent_device_file` Python method. This affects NVMe devices, for example.

**openmediavault-onedrive 7.1.5**

- Add the `OMV_ONEDRIVE_SYSTEMD_EXECSTART_ARGS` environment variable to append CLI only options and remove `OMV_ONEDRIVE_VERBOSE`.
- Issue #1955: Fix issue in `omv-onedrive` script that caused the onedrive service to be stopped and started even if the service was not enabled.
