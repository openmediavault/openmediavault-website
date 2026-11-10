---
title: "New update available"
date: 2023-10-01T13:28:17
slug: "new-update-available-234"
categories: ["News"]
---

**openmediavault 6.9.2**

- Various improvements related to networking in the PHP backend.
- Disable the caching of UI files to prevent annoying browser cache flushing.
- Remove support of `venet` ethernet network devices names. Predictable devices names are used instead nowadays.
- Add better support for `veth` virtual ethernet devices that are used by containers.
- Issue #1596: Support DSA network interfaces (e.g. Axzez Interceptor board).
