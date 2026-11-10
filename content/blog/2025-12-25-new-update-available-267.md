---
title: "New update available"
date: 2025-12-25T18:06:23
slug: "new-update-available-267"
categories: ["News"]
---

**openmediavault 8.0.2**

- Improve cpupower deployment.
- Fix postfix issue.

If you do not get emails from your OMV system anymore, please perform the following commands from the CLI as root user:

```bash
# dpkg-divert --remove /usr/sbin/sendmail
# rm /usr/sbin/sendmail
# apt-get install --yes --reinstall postfix
# omv-salt deploy run postfix
```

I apologize for the inconvenience.
