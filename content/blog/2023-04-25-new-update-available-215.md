---
title: "New update available"
date: 2023-04-25T18:40:10
slug: "new-update-available-215"
categories: ["News"]
---

**openmediavault 6.3.10**

- Issue #1537: `findmnt` is using tree-like output on some systems which breaks the parsing of the content.
- Enhance the UDEV rules to workaround the duplicate serial number bug of various disk enclosures. Now the `disk/by-uuid` symlinks are created as well if a file system UUID exists.
