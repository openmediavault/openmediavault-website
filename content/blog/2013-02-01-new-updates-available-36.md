---
title: "New updates available"
date: 2013-02-01T21:28:33
slug: "new-updates-available-36"
categories: ["News"]
---

The following changes has been done:

**openmediavault 0.4.17**

- Update locales.
- Improve omv_get_ipaddr helper function.
- Keep the old configuration files when upgrading Debian packages.
- Limit sshd to IPv4 (AddressFamily=inet) if IPv6 is disabled.
- Use the comment from a rsync/cron job as email subject.
- Setting session timeout to 0 in the ‘System | General Settings | Web Administration’ page sets the session timeout to unlimited.

**openmediavault-clamav 0.4.4**

- Update locales.
- Use the comment from a scan job as email subject.

Please update your system via ‘System > Update Manager’ in the OpenMediaVault WebGUI. Please reload the WebGUI to let the changes installed by the update take effect.
