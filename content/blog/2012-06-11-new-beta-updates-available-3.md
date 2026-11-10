---
title: "New BETA updates available"
date: 2012-06-11T20:35:13
slug: "new-beta-updates-available-3"
categories: ["News"]
---

The following changes has been done:

**openmediavault 0.3.0.13**

- Update locales.
- Mantis 0000497: Various errors after last update to shared folders.
- Mantis 0000501: Permanent mount error for the FTP folders.
- Mantis 0000503: Volume groups containing the character ‘-‘ are not processed correctly in association with logical volumes.
- Mantis 0000504: Domain field doesn’t allow domains beginning with a number.
- Mantis 0000512: Improve FileSystemMgmt::mount and FileSystemMgmt::umount RPC’s to simply mount/umount a filesystem without create/delete fstab entries.

**openmediavault-clamav 0.3.0.3**

- Update locales.
- Use same logfile as clamd.
- Mantis 0000499: Pid file permission denied.

Please update your system via ‘System > Update Manager’ in the OpenMediaVault WebGUI. Please reload the WebGUI to let the changes installed by the update take effect.
