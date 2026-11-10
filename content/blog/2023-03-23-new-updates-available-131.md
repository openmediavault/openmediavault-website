---
title: "New updates available"
date: 2023-03-23T19:29:40
slug: "new-updates-available-131"
categories: ["News"]
---

**openmediavault 6.3.5**

- Update locale files.
- Do not configure monit alerts for `CPU usage` and `Memory usage` if they are disabled in the UI.
- Set metadata to `DUP` when creating a Btrfs file system with the `Single` profile (default since Kernel version 5.15).
- Perform a daily scheduled cron task that checks Btrfs file systems for errors. An email will be sent when errors are detected. Use the OMV_BTRFS_ERROR_CHECK_ENABLED environment variable to disable this check.
- Perform a weekly scheduled cron task that scrubs all mounted Btrfs file systems. A report will be emailed afterwards. Use the OMV_BTRFS_SCRUB_ENABLED environment variable to disable this task. Use the additional variables OMV_BTRFS_SCRUB_PRIORITY and OMV_BTRFS_SCRUB_READONLY to customize the scrub task.
- Improve cron scripts by added better logging output.
- Display Cron expressions in human-readable descriptions on forms and in datatable columns.
- Issue #1516: Adapt the UI so that it works properly behind reverse proxies.

**openmediavault-clamav 6.0.3**

- Translate Cron expressions to human-readable descriptions.
