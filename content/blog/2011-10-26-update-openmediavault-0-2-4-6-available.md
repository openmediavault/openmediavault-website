---
title: "Update openmediavault 0.2.4.6 available"
date: 2011-10-26T21:26:06
slug: "update-openmediavault-0-2-4-6-available"
categories: ["News"]
---

The following changes has been done:

- Increase HTTP timeout to 45 seconds.
- Improve user management. Users are automatically added to the group ‘users’.
- Validate privileges before putting them. Also filter user ‘admin’ in shared folder privileges dialog.
- Mantis 0000095: Add ability to hide [homes] in Samba
- Mantis 0000098: Hide Samba “Printer and Faxes” as shown in Windows
- Mantis 0000145: Error when setting privileges on a shared folder. Only update the given shared folder privileges.
- Mantis 0000147: FTP SSL/TLS error when enabling certificate
- Mantis 0000154: Area Storage/Filesystem unlink error
- Mantis 0000158: Users without a valid shell cannot access FTP shares
- Mantis 0000165: System/Certificates/Add SSL Certificate/Reset only deletes Comment-field

Please update your system via ‘System > Update Manager’ in the OpenMediaVault WebGUI.
