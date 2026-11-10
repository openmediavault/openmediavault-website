---
title: "New updates available"
date: 2026-10-28T21:02:45
slug: "new-updates-available-217"
categories: ["News"]
---

**openmediavault 8.6.0**

- Read the file system information from the udev database instead of running `blkid` on every request. This prevents hanging `blkid` processes (and a high system load) when a disk is failing.
- Do not probe all block devices via `findmnt --output-all`, because this hangs if a disk is failing.
- Fix wrong parsing of file system labels containing double quotes.
- Wait until udev has processed the changes after creating a file system or wiping a device.

**openmediavault-2fa-emailotp 8.0.2**

- Fix translations.

**openmediavault-2fa-totp 8.0.3**

- Fix translations.

**openmediavault-bcache 8.0.3**

- Wait until udev has processed the changes after wiping a device.

**openmediavault-ftp 8.0.5**

- Fix translations.

**openmediavault-k8s 8.2.8**

- Fix translations.

**openmediavault-lvm2 8.0.4**

- Wait until udev has processed the changes after creating a physical volume.
