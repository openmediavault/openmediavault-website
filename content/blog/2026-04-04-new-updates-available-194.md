---
title: "New updates available"
date: 2026-04-04T18:15:24
slug: "new-updates-available-194"
categories: ["News"]
---

**openmediavault 8.2.1**

- Set link local addresses for both Ethernet and WiFi network interfaces by default when using DHCP to ensure that the system is reachable even if no other IP address can be obtained.
- Issue #2160: Add change-based monitoring for key SMART attributes (`Reallocated Sectors`, `Current Pending Sectors`, and `Offline Uncorrectable`) to reduce repeated alerts for unchanged disk issues while still notifying about relevant health degradations.

**openmediavault-filebrowser 8.0.1**

- Fix bug in configuration.
- Issue #2164: Add environment variables to customize the default file/dir permissions: `OMV_FILEBROWSER_APP_CREATEFILEPERMISSION` (default: `664`) and `OMV_FILEBROWSER_APP_CREATEDIRECTORYPERMISSION` (default: `755`).
