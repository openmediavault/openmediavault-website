---
title: "New update available"
date: 2023-04-22T10:29:45
slug: "new-update-available-214"
categories: ["News"]
---

**openmediavault 6.3.9**

- Add the environment variable `OMV_BTRFS_SCRUB_PERIOD`. The supported values are `weekly` and `monthly`. Defaults to `monthly`.
- Relocate the Cron Btrfs scrubbing script into a separate CLI tool named `omv-btrfs-scrub`. If you need to run the scrub jobs at a certain date, you may disable the build-in cron jobs via the environment variable `OMV_BTRFS_SCRUB_ENABLED`. Finally, create your custom scheduled tasks via the UI by typing `omv-btrfs-scrub` in the `Command` form field.
- Add UDEV rule to fix the duplicate serial number issue on Qnap TR-004 devices.
- Perform scheduled Btrfs scrub and scan tasks on file system mount points rather than devices.
- Fix hdparm configuration. Use `force_spindown_time` to apply settings to non-APM devices.
