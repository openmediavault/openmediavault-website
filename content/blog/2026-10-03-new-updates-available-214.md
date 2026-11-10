---
title: "New updates available"
date: 2026-10-03T11:25:12
slug: "new-updates-available-214"
categories: ["News"]
---

**openmediavault 8.5.10**

- Run a simulation before installing packages.
- Fix error status handling in rsync cron script.
- Monitor systemd journal for block I/O errors and send a warning email if they occur.
- Fix crash in `omv-mkaptidx` when a package has no origin.
- Store PHP session files in the volatile directory `/run/openmediavault/sessions`. Users need to log in again once after the configuration has been applied.
- Issue #2280: Increase vertical height of the task dialog.
- Issue #2284: Do not set the Samba dfree command on Btrfs if a Time Machine max size is set.

**openmediavault-clamav 8.0.3**

- Fix error status handling in cron script.

**openmediavault-nut 8.0.6**

- Issue #2274: Ensure generated passwords do not contain characters that irritate the NUT config parser.

**openmediavault-usbbackup 8.0.2**

- Fix error handling, mount verification and unmounting.
- Populate `Device` field when editing a backup job.
