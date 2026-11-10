---
title: "New update available"
date: 2023-09-02T16:49:00
slug: "new-update-available-231"
categories: ["News"]
---

**openmediavault 6.8.0**

- Update locale files.
- Change default governor to `schedutil` on ARM systems. This can be customized via the `OMV_CPUFREQUTILS_GOVERNOR` environment variable.
- Add setting to choose the minimum SMB protocol version. This way SMB1 can be enabled to allow legacy systems to access your SMB shares.
- Issue #1588: Support SMART information for devices connected via RTL9210B-CG.
- Issue #1589: Fix a problem in the netplan.io configuration for ethernet network interfaces with non-permanent MAC addresses.
