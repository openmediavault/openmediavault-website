---
title: "New updates available"
date: 2025-04-04T09:19:20
slug: "new-updates-available-170"
categories: ["News"]
---

**openmediavault 7.7.3**

- Improve form layout.
- Issue #1941: Add UDEV rule to fix the duplicate serial number issue for TerraMaster D5-300 and other hard drive enclosures based on the JMicron Gen1 SATA 6Gb/s Bridge.

**openmediavault-ftp 7.0.1**

- Update locale files.
- Add hint to `Anonymous FTP` checkbox.

**openmediavault-k8s 7.4.5**

- Update locale files.
- Use K3S v1.32.3+k3s1 by default. Existing installations won’t be upgraded automatically. To force an upgrade, create the file `/var/lib/openmediavault/upgrade_k3s` and run `omv-salt deploy run k3s`.
