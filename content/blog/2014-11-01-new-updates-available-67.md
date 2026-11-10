---
title: "New updates available"
date: 2014-11-01T13:29:01
slug: "new-updates-available-67"
categories: ["News"]
---

The following changes were made:

**openmediavault 1.0.30** (via pre-release repository)

- Update locales.
- Fix various issues.
- Remove SSLv2 and SSLv3 support in proftpd. Use only TLSv1 now.
- Refactor filesystem backend. Introduce class OMVFilesystemBackendAbstract, OMVFilesystemFactory and OMVFilesystemAbstract. All supported filesystems must extend this class. Backends must be registered via OMVFilesystems::registerBackend.
- Enhance OMVStorageDeviceBackendAbstract class.
- Mantis 0001142: Shares with spaces in the path/directory don’t appear when using FTP/FTPS.
- Mantis 0001157: System/Update Manager/ upload button. Increase nginx client_max_body_size to 25M.
- Mantis 0001159: Allow to disable FTP login message. To disable the welcome message set OMV_PROFTPD_SHOW_DISPLAYLOGIN=”no” in the file /etc/default/openmediavault.
- Mantis 0001161: Send cron email about samba-recycle.
- Mantis 0001162: Disk overview from raid creation screen has empty column serial number and vendor ATA.
- Mantis 0001166: Samba guest allowed directive option doesn’t allow guest login when privileges are set.
- Mantis 0001167: /etc/postfix/smtp_header_checks is not updated during hostname changing.
- Mantis 0001169: Empty progress text output in Windows IE.

**openmediavault-clamav 1.0.2**

- Update locales.
- Quote shared folder paths in cron script to fix bug when the path contains white spaces.

**openmediavault-owncloud 1.1.4**

- Mantis 0001172: Add package ‘locales’ as dependency.
