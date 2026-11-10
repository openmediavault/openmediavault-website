---
title: "New update available"
date: 2021-01-12T10:21:41
slug: "new-update-available-159"
categories: ["News"]
---

**openmediavault 5.5.22**

- Fixing package management issue with new UDEV rules. The old file was not removed automatically. Because of that please notice the information about the new UDEV rules in [5.5.21](/blog/2021/01/new-update-available-158/).
- Fix monit/proftpd issue when implicit TLS is enabled.
- Issue #921: Prevent using WLAN NICs for bond and bridge interfaces.
- Issue #929: Set ‘big_writes’ as default mount option for NTFS filesystems.
- Issue #930: Add UDEV rule for OWC Mercury Elite Pro Dual mini enclosure to fix the random serial ID issue.
