---
title: "New updates available"
date: 2026-02-27T09:26:54
slug: "new-updates-available-188"
categories: ["News"]
---

**openmediavault 8.1.1**

- Improvement of the automatic logout function of the UI.
- Add the environment variable `OMV_SYSTEMD_JOURNALD_SYSTEMMAXUSE` to customize the systemd-journald. Defaults to `1G`, which corresponds to a retention period of approximately 3 months for log entries.

**openmediavault-k8s 8.2.1**

- Use K3S v1.34.4+k3s1 on new installations. Existing installations won’t
- be upgraded automatically.
