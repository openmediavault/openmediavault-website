---
title: "New updates available"
date: 2023-05-26T17:06:42
slug: "new-updates-available-133"
categories: ["News"]
---

**openmediavault 6.4.0**

- Update locale files.
- Various improvements.
- Upgrade to Angular 14.
- Improve omv-btrfs-scrub and scheduled Btrfs error checks. Deduplicate file system UUID to prevent unnecessary work.
- Configure DHCP overrides in Netplan.io.
- Fix bug in the bonding network interface configuration page. The `Primary` field is only used by the `active-backup`, `balance-tlb` and `balance-alb` modes.
- Improve DNS configuration. systemd-resolved is now fully responsible for network name resolution. It is operated in stub mode.
- Add snapshot lifecycle management to clean up snapshots of shared folders according to given rules. The tool `omv-sfsnapadm` is called hourly by a cron job to do the cleanup. The settings can be found at `Storage | Shared Folders | All Snapshots` in the UI. This feature is disabled by default.

**openmediavault-clamav 6.0.4**

- Update locale files.
- Immediately run scheduled task when pressing the `Play` button.

**openmediavault-usbbackup 6.0.3**

- Update locale files.
- Immediately run scheduled task when pressing the `Play` button.
