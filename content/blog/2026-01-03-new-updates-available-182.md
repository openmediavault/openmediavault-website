---
title: "New updates available"
date: 2026-01-03T12:51:39
slug: "new-updates-available-182"
categories: ["News"]
---

**openmediavault 8.0.5**

- Add the environment variables OMV_SMARTMONTOOLS_UPDATE_DRIVEDB_ENABLED and OMV_SMARTMONTOOLS_UPDATE_DRIVEDB_OPTIONS to customize the weekly update of the smartmontools drive database.
- Fix the sendmail wrapper bug when email notifications are disabled and the postfix configuration is generated.
- Improved visualization of shared folders that point to a non-existent filesystem. These are now displayed as `Unavailable`.

**openmediavault-md 8.0.1**

- Adapt to Debian 13 defaults.

If you do not get emails from your OMV system anymore, please perform the following commands from the CLI as root user. Make sure you’ve disabled email notifications in the UI before.

```bash
# dpkg-divert --remove /usr/sbin/sendmail
# rm /usr/sbin/sendmail
# apt-get install --yes --reinstall postfix
# omv-salt deploy run postfix
```

I apologize for the inconvenience.
