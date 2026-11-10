---
title: "New update available"
date: 2025-08-29T09:19:17
slug: "new-update-available-263"
categories: ["News"]
---

**openmediavault 7.7.15**

- Update locale files.
- Adapt to wsdd-server 0.8 package.
- Improve BTRFS backend implementation to handle RAID1C3 and RAID1C4 profiles. Additionally unknown RAID profiles will not break the code anymore.
- Issue #1778: Add support to disable authentication and other miscellaneous notifications.
- Issue #2001: Fix bug in network statistics.

If you experience a problem while applying and deploying the configuration, please check if the file `/etc/rsyslog.d/openmediavault-pamtally2.conf` exists on your system. To get rid of the error simply delete the file.
