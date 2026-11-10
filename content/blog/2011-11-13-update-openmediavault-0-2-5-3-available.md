---
title: "Update openmediavault 0.2.5.3 available"
date: 2011-11-13T00:05:25
slug: "update-openmediavault-0-2-5-3-available"
categories: ["News"]
---

The following changes has been done:

- Add ability to add hot spares to a RAID device via WebGUI.
- Modify regular expression to validate usernames.
- Change Avahi (Zeroconf) listening port for SMB service from 139 to 445.
- Improve implementation of log file handling. Output the last 100000 lines. Limitation can be modified via OMV_MAX_LOGFILE_LINES environment variable.
- Mantis 0000005: PHP crashes when sorting bigger syslog files
- Mantis 0000084: Unable to replace faulted drive in RAID5 array via GUI
- Mantis 0000249: FTP MasqueradeAddress does not accept FQDN
- Mantis 0000260: Using simple quote on comment give error
- Mantis 0000261: Display physical memory usage based on unbuffered/uncached used/free values.

Please update your system via ‘System > Update Manager’ in the OpenMediaVault WebGUI. Please reload the WebGUI to let the changes installed by the update take effect.
