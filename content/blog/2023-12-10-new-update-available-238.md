---
title: "New update available"
date: 2023-12-10T15:03:37
slug: "new-update-available-238"
categories: ["News"]
---

**openmediavault 6.9.10**

- Add omv-release-upgrade command line tool to allow users to migrate their systems to OMV7 (Sandworm) which is based on Debian 12 (Bookworm).
- Add UTF8 support for creating SSL certs via UI.
- Add email to SSL certificate’s SAN in its own field.

> [!CAUTION]
> ATTENTION, this is currently only for intrepid users. Starting with this package version all helper scripts are included that will allow you to upgrade your system from OMV6 (Debian 11) to OMV7 (Debian 12). Please note that due to the large number of different system configurations out there, problems may still occur. If possible use a TTY and avoid using SSH to run the migration to prevent loosing the connection. If you encounter any problems, please consult the forum for advice. Every reported problem helps to prevent other users from getting into the same situation. Thank you for your help.
