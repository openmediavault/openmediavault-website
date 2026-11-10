---
title: "New updates available"
date: 2021-02-20T14:57:06
slug: "new-updates-available-99"
categories: ["News"]
---

**openmediavault 5.6.0**

- Update locales.
- Improve UI to import a users public SSH key. Now SSH public keys in RFC 4716 and OpenSSH format can be imported.
- Fix a SMB recycle bin cleanup script issue. Execute run-args with the ‘–new-session’ option to ensure the scripts will run until completion. This should prevent subsequent locks.
- Remove ‘No certificate request’ option from ‘FTP | SSL/TLS’ page because it is deprecated in proftpd.
- Improve monit/proftpd connection test. This should prevent errors when SSL/TLS is enabled.
- Enable NTP by default on new installations.
- Fix a bug in omv-env when trying to set a string separated by blanks.
- Rename various OMV Python modules because of import issues.
- Issue #944: Hardening storage backend to prevent errors in LXC.
- Issue #959: Improve SMART support for HPSA HBA.
- Issue #968: Configured quota is not displayed correct.

**openmediavault-diskstats 5.1.0**

- Adapt to modified OMV Python API.

**openmediavault-forkeddaapd 5.0.3**

- Update locales.
- Fix bug in configuration file.
- Issue #952: Disable MPD support by default. Can be enabled by settings the environment variable OMV_FORKEDDAAPD_MPD_PORT to 6600 or any other value.

**openmediavault-nut 5.2.0**

- Adapt to modified OMV Python API.

**openmediavault-usbbackup 5.0.7**

- Issue #720: Execute backup job only when filesystems are up.
