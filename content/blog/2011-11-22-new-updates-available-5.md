---
title: "New updates available"
date: 2011-11-22T21:33:44
slug: "new-updates-available-5"
categories: ["News"]
---

openmediavault 0.2.5.5

- Improve monitoring feature.
- Mantis 0000044: Request confirmation to delete shared folder content.
- Mantis 0000269: hdparm – change config from “/dev/xxx” to “/dev/disk/by-id”. The same applies to smartd.conf.
- Mantis 0000272: Allow handleResponse in OMVDownloadRpcServer to accept a content-type
- Mantis 0000275: RPC call to System::noop sometimes throws exception
- Mantis 0000276: Configure monit load average based on detected CPU’s
- Mantis 0000281: When editing NFS share which was set with read-write, the menu drops back to read-only
- Mantis 0000283: Min UID/GID

openmediavault-forkeddaapd 0.2.1

- Improve monitoring feature.

openmediavault-netatalk 0.2.3

- Improve monitoring feature.

Please deinstall the netatalk and forkeddaapd plugins via WebGUI before upgrading core package to 0.2.5.5 to prevent installation errors.

Please update your system via ‘System > Update Manager’ in the OpenMediaVault WebGUI.
