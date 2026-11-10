---
title: "New update available"
date: 2020-12-29T12:38:33
slug: "new-update-available-157"
categories: ["News"]
---

**openmediavault 5.5.20**

- Improved PHP and Python block device and filesystem implementation. Re-add usage of /dev/disk/by-uuid device files for all filesystems (except BTRFS) to workaround problems with JMicron based USB enclosures.
- Issue #894: Disabled cron jobs are still executed.
- Issue #896: Improve UDEV rule to fix issues with JMS567 SATA 6Gb/s bridge based USB enclosures.
