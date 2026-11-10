---
title: "New updates available"
date: 2026-01-31T10:55:31
slug: "new-updates-available-186"
categories: ["News"]
---

**openmediavault 8.0.9**

- Use `performance` CPU governor for AMD64 and i386 architectures by default. Other architectures use `schedutil` as default governor. Run the `cpupower frequency-info` command to check the governors available on your system and use the `OMV_CPUPOWER_GOVERNOR` environment variable to customize it if necessary.
- Issue #2120: Sync HTML lang attribute with current locale.

**openmediavault-k8s 8.2.0**

- Update locale files.
- Remove the Kubernetes Dashboard integration.
