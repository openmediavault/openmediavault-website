---
title: "New updates available"
date: 2012-12-29T21:29:42
slug: "new-updates-available-31"
categories: ["News"]
---

The following changes has been done:

**openmediavault 0.3.8**

- Fix access bug when a SMB/CIFS share is declared as public. Thanks to premudriy for the research and fix.

**openmediavault 0.4.9**

- Update locales.
- Fix access bug when a SMB/CIFS share is declared as public. Thanks to premudriy for the research and fix.
- Mantis 0000630: NTFS partitions added as /dev/sdX in /etc/fstab.
- Mantis 0000675: Validate user-input in SMTP server.
- Mantis 0000676: Provide a way to change average system load thresholds for notifications. Alert notifications can be disabled via the environment variables OMV_MONIT_SERVICE_SYSTEM_(MEMORYUSAGE|CPUUSAGE|LOADAVG)_ENABLE.
- Mantis 0000677: A bit more functional network recycle bin.
- Mantis 0000679: Drives are not referenced correctly.

Please update your system via ‘System > Update Manager’ in the OpenMediaVault WebGUI. Please reload the WebGUI to let the changes installed by the update take effect.
