---
title: "New update available"
date: 2014-09-14T20:40:52
slug: "new-update-available-41"
categories: ["News"]
---

The following changes were made:

**openmediavault 0.5.58**

- Improve upgrade script. The nut, ldap and iscsitarget plugins must be deinstalled before upgrade, otherwise the installation fails.
- Improve upgrade script. Fix issue when upgrading from squeeze-lts.
- Modify help text in omv-release-upgrade script.
- Improve pre upgrade scripts.
- Check whether a directory is still used as mount point before unlinking. This is done to prevent data loss when the device or resource is busy.
