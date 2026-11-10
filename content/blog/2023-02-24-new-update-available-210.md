---
title: "New update available"
date: 2023-02-24T14:04:22
slug: "new-update-available-210"
categories: ["News"]
---

**openmediavault 6.3.1**

- Update locale files.
- Issue #1490: Support SMB shadow copies for home directories when the shared folder is located on a BTRFS file system.
- Issue #1500: Use ISO 8601 basic format in the snapshot naming schema because Windows does not support `:` in file names. Note that due to this change, earlier snapshots with the ISO 8601 extended format are no longer listed under Windows in `Previous Versions`. Please delete and recreate scheduled snapshot tasks as well.
- Issue #1502: Add support for hidden WiFi networks.
