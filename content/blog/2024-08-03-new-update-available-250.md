---
title: "New update available"
date: 2024-08-03T11:15:01
slug: "new-update-available-250"
categories: ["News"]
---

**openmediavault 7.4.4**

- Update locale files.
- Get correct client IP in login message when system is behind a reverse proxy.
- Rename `Diagnostics | Performance Statistics | Disk Usage` to `File System Usage` to differentiate with `Disk I/O`.
- Issue #1635: Switch to `@siemens/ngx-datatable` component.
- Issue #1799: Do not use a login shell in the cron script `openmediavault-update-smart-drivedb`.
- Issue #1801: Support requesting multiple files from a remote host, e.g. `user@host:/dir1 :/dir2 :/dir3`, in rsync jobs.
