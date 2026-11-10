---
title: "New update available"
date: 2020-09-21T17:10:49
slug: "new-update-available-150"
categories: ["News"]
---

**openmediavault 5.5.11**

- Update locales.
- Do not allow to create NFS shares using shared folders with blanks in their relative path. SaltStack can’t handle such bind mounts (https://github.com/saltstack/salt/issues/54508).
- Issue #815: Disable quota if no quotas are configured for a device.
