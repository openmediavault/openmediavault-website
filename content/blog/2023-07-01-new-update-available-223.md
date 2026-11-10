---
title: "New update available"
date: 2023-07-01T23:00:54
slug: "new-update-available-223"
categories: ["News"]
---

**openmediavault-onedrive 6.2.9**

- Update locales.
- Add option to specify the user that is used to run the onedrive service. All synchronized files and directories will be owned by this user. Defaults to `onedrive`.
- Add `omv-onedrive` helper script to perform CLI commands. The script will point the onedrive app to the correct configuration directory and run the command using the configured user.
