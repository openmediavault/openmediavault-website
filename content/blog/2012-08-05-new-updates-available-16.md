---
title: "New update available"
date: 2012-08-05T16:01:38
slug: "new-updates-available-16"
categories: ["News"]
---

The following changes has been done:

**openmediavault 0.3.0.19**

- Update locales.
- Do not display shared folder ACL dialog if the filesystem containing the shared folder does not support POSIX ACLs.
- Disable ‘Mount’ button if the selected filesystem does not provide a UUID.
- Fix bug in logon message script.
- Mantis 0000556: fstab updating script always adds openmediavault section to the end of file.
- Mantis 0000558: Apache timeout. The Apache FCGI parameter FcgidIOTimeout is set to 300 seconds by default, but it can be modified by the OMV_APACHE2_FCGIDIOTIMEOUT environment variable.
- Mantis 0000559: Modifying user details “breaks” SMB/CIFS access. Changing unnecessary user informations, e.g. comment or groups, results in a restart of the SMB service which is only required if the password has been modified.

Please update your system via ‘System > Update Manager’ in the OpenMediaVault WebGUI. Please reload the WebGUI to let the changes installed by the update take effect.
