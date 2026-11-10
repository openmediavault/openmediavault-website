---
title: "New update available"
date: 2020-02-23T21:16:20
slug: "new-update-available-134"
categories: ["News"]
---

**openmediavault-clamav 4.1.13**

- Issue #607: Error using on-access scanner.
- Set ReceiveTimeout=300 (5 minutes) in freshclam.conf, otherwise the database download will never succeed because it will be restarted every 30 seconds when the download was not successful during that time.
