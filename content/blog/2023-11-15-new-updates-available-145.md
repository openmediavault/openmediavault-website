---
title: "New updates available"
date: 2023-11-15T22:01:49
slug: "new-updates-available-145"
categories: ["News"]
---

**openmediavault 6.9.8**

- Display RPI CM4 CPU model in system information.
- Fix an error in the weekly cron job that is downloading the SMART database.
- Hardening `omv-sfsnapadm` by skipping snapshots with invalid naming schema.

**openmediavault-clamav 6.0.7**

- Make sure `/var/lib/clamav` exists to let freshclam download the latest database files.

**openmediavault-usbbackup 6.0.5**

- Make the `Send email` and `Quiet` options mutually exclusive.
