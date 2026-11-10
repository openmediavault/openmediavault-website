---
title: "New updates available"
date: 2024-11-25T15:25:10
slug: "new-updates-available-164"
categories: ["News"]
---

**openmediavault 7.4.14**

- Add rudimentary support for the obsolete file systems `reiserfs` and `reiser4`. The userland apps must be installed manually via the Debian packages `reiserfsprogs` and `reiser4progs`.
- Issue #1859: Fix a problem when disabling the user home directory.
- Issue #1862: Use LC_ALL environment variable instead of LANG.

**openmediavault-bcache 7.0**

- Initial release

**openmediavault-diskstats 7.0.2**

- Issue #1862: Use LC_ALL environment variable instead of LANG.

**openmediavault-k8s 7.4.2**

- Use K3S v1.31.2+k3s1 by default. Existing installations won’t be upgraded automatically. To force an upgrade, create the file `/var/lib/openmediavault/upgrade_k3s` and run `omv-salt deploy run k3s`.
- Fix Traefik port configuration issue.
- Issue #1862: Use LC_ALL environment variable instead of LANG.

**openmediavault-md 7.0.3**

- Issue #1862: Use LC_ALL environment variable instead of LANG.

**openmediavault-onedrive 7.1.3**

- View log messages under `Diagnostics | System Logs | Logs`.
