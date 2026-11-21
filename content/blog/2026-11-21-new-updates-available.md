---
title: "New updates available"
date: 2026-11-21T10:22:11
slug: "new-updates-available-78d414b4"
categories: ["News"]
---

**openmediavault 8.7.1**

- Issue #2335: Fix false positive "package database is held by another process" error.

**openmediavault-filebrowser 8.0.8**

- The admin password is now auto-generated at the first start of the application. You can get it from the logs of the container or by running the following command: `podman logs filebrowser-app | grep "admin password"`.
