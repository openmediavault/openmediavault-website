---
title: "New update available"
date: 2022-08-20T10:52:25
slug: "new-update-available-197"
categories: ["News"]
---

**openmediavault 6.0.36**

- Update locale files.
- Enable remote searching in user/group management pages.
- Adapted Samba vfs_fruit settings according to the wiki to better work with Mac OS X. The following environment variables have been introduced:
  - OMV_SAMBA_SHARE_FRUIT_VETOAPPLEDOUBLE (defaults to ‘no’)
  - OMV_SAMBA_SHARE_FRUIT_NFSACES (defaults to ‘no’)
  - OMV_SAMBA_SHARE_FRUIT_WIPEINTENTIONALLYLEFTBLANKRFORK (defaults to ‘yes’)
  - OMV_SAMBA_SHARE_FRUIT_DELETEEMPTYADFILES (defaults to ‘yes’)
- Issue #1378: Validate SMB workgroup name.
