---
title: "New updates available"
date: 2026-07-03T09:36:29
slug: "new-updates-available-207"
categories: ["News"]
---

**openmediavault 8.5.0**

- Issue #2235: Add a 2-step authentication plugin framework for the UI. Note, if you are using the API to log into the system, the response of the `Session::login` RPC has been changed.
- Hardening the UI auto-logout feature.
- Move Samba recycle VFS object to the end of the list.

**openmediavault-2fa-totp 8.0**

- Initial release. Thank you to Allan Barcelos for the groundwork the plugin is based on.

**openmediavault-clamav 8.0.2**

- Set `MaxThreads` to the number of available CPU cores. Use the environment variable `OMV_CLAMAV_CLAMD_MAXTHREADS` to customize this.

**openmediavault-lvm2 8.0.2**

- Hardening command execution in RPCs.

**openmediavault-md 8.1.3**

- Hardening command execution in RPCs. Thank you to Rafael Romão and Gabriel Gomes for reporting this issue.

**openmediavault-wbprefs 8.0.4**

- Support authentication verification page.
