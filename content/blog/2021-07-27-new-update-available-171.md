---
title: "New update available"
date: 2021-07-27T18:29:25
slug: "new-update-available-171"
categories: ["News"]
---

**openmediavault 5.6.13**

- Issue #986: Divert files modified by openmediavault to prevent problems when package updates want to override them.
- Issue #1058: Disable SMTPUTF8 support in Postfix. This extension seems not supported by all email providers. Use the environment variable OMV_POSTFIX_MAIN_SMTPUTF8_ENABLED to customize this behavior.
- Issue 1068: Display UID/GID in user/group data tables. The columns are hidden by default.
