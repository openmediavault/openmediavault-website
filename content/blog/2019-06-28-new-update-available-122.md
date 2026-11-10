---
title: "New update available"
date: 2019-06-28T16:10:43
slug: "new-update-available-122"
categories: ["News"]
---

**openmediavault 4.1.23**

- Append ‘source-directory interfaces.d’ to the end of the file /etc/network/interfaces to be able to use already configured interfaces.
- Do not write IPv6 /etc/hosts entries if IPv6 is disabled.
- Fix ‘Reset’ button issue in file system quota dialog.
- Purge quota configuration when file sytem is deleted.
- Issue #370: Remove weak RSA key lengths.
- Issue #394: Postfix will resolve SMTP server with IPv6 even if IPv6 is disabled.
- Issue #396: Prevent mdadm defines no arrays warning message.
