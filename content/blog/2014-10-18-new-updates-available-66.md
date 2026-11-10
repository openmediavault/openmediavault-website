---
title: "New updates available"
date: 2014-10-18T13:30:37
slug: "new-updates-available-66"
categories: ["News"]
---

The following changes were made:

**openmediavault (1.0.29)**

- Update locales.
- Fix bug when using PHP >= 5.4.13. Enable the ability to load external XML entities.
- Mantis 0000876: Daily mdadm cron job exited with return code 1.
- Mantis 0001135: Anacron mdadm Notifications Emails.
- Mantis 0001145: Proftpd: Ability to add directives into shares.
- Mantis 0001146: Dashboard: Use file system label on status widget.
- Mantis 0001149: SMART data unavailable for external USB disks.
- Mantis 0001150: Add support for public key authentication on SSH.

**openmediavault (1.0.28)**

- Update locales.
- Refactor browser language auto-detection.
- Improve the OMVFilesystem::getMountPoint and OMVFilesystem::isMounted methods.
- Mantis 0001141: smartd: Reference disks by ATA-/SCSI-Id.
- Mantis 0001142: Shares with spaces in the path/directory don’t appear when using FTP/FTPS.

**openmediavault-nut (1.0.3)**

- Update locales.
- Fix bug when sending notification emails. Currently emails are send from user ‘nut’ which can’t be resolved by postfix.
