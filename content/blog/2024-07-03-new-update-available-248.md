---
title: "New update available"
date: 2024-07-03T17:40:54
slug: "new-update-available-248"
categories: ["News"]
---

**openmediavault 7.3.1**

- Update locale files.
- Fix the error of automatic reloading of several dashboard widgets, e.g. the system time widget.
- Fixed a bug in unattended-upgrades that causes all new packages to be installed instead of just security updates.
- Hardening of the quota Salt state to cope with situations where there are multiple mount points for a device.
- Do not activate the IPv6 privacy extension for network interfaces. If necessary this can be done individually using `sysctl`.
