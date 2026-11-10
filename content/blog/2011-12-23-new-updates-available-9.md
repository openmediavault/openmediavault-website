---
title: "New updates available"
date: 2011-12-23T00:20:17
slug: "new-updates-available-9"
categories: ["News"]
---

openmediavault 0.2.6.1

- Fix bug in postfix configuration. Emails where send to sender instead of primary/secondary recipient.
- Execute the cron job command in a shell when pressing the ‘Run’ button in the WebGUI.
- Fix bugs in omv-initfs script and RPC backend
- Enable/disable sending email of cron job output to user
- Mantis 0000322: Have the option to set SSL certs path for email accounts (eliminates the postfix error being logged). By default the file /etc/ssl/certs/ca-certificates.crt which contains all trusted CA certificates is used by postfix. Use update-ca-certificates when adding a new CA certificate. The postfix configuration can be modified by the environment variables OMV_POSTFIX_SMTP_TLS_CAFILE and OMV_POSTFIX_SMTP_TLS_CAPATH.
- Mantis 0000325: All files deleted after deleting FTP share

openmediavault-nut 0.1.5

- Mantis 0000329: NUT Plugin does not create Voltage/Timeleft Graphs

Please update your system via ‘System > Update Manager’ in the OpenMediaVault WebGUI.
