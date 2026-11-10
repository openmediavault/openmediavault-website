---
title: "New updates available"
date: 2026-09-20T10:11:01
slug: "new-updates-available-213"
categories: ["News"]
---

****openmediavault 8.5.9****

- Rate-limit authentication challenge verification attempts.
- Fix S.M.A.R.T. status assessment for ATA and NVMe devices, including critical NVMe warning conditions.
- Add udev rule to create /dev/md/md\* symlinks to work around an upstream mdadm regression in Debian 13 that triggers false `DeviceDisappeared` and `NewArray` alerts during daily monitoring (Debian bug #1040638).
- Issue #2271: Fix monit config for rrdcached. Use systemctl restart instead of start.
- Issue #2272: Add SMART support for QNAP TR-002 (individual mode).

**openmediavault-2fa-emailotp 8.0.1**

- Update i18n files.
- Fix bug when trying to disable 2FA for an account.

**openmediavault-2fa-totp 8.0.2**

- Update i18n files.
- Fix bug when trying to disable 2FA for an account.

**openmediavault-md 8.1.6**

- Treat `active` state of RAID devices as healthy in dashboard widget.
