---
title: "New update available"
date: 2022-08-10T19:32:04
slug: "new-update-available-196"
categories: ["News"]
---

**openmediavault 6.0.34**

- Various UI improvements.
- Let monit wait 30 seconds before it starts checking the services. This should prevent alert messages by giving services enough time to settle up. The delay can be customized via the OMV_MONIT_CHECK_START_DELAY environment variable.
- Issue #1369: Deploy correct SMB async I/O configuration.
