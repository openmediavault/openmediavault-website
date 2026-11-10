---
title: "New updates available"
date: 2023-08-06T17:21:55
slug: "new-updates-available-140"
categories: ["News"]
---

**openmediavault 6.5.5**

- Issue #1572: Set `shadow:localtime = no` in smb.conf because several users reported that `Previous Versions` is not working in Windows. Note, Windows will display `Date modified` in UTC, but this is the compromise to get the them displayed at all.

**openmediavault-filebrowser 6.0.7**

- Add the `OMV_FILEBROWSER_APP_CONTAINER_START_OPTIONS` environment variable to append custom `podman run` arguments.
