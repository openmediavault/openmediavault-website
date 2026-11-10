---
title: "New updates available"
date: 2022-08-16T18:53:16
slug: "new-updates-available-119"
categories: ["News"]
---

**openmediavault 6.0.35**

- Update locale files.
- Remove checkbox in the confirmation dialog when applying or reverting configuration changes.
- Unset smartmontools.service condition check which prevents the service from getting started in virtualized environments.
- Issue #1371: Bond mode LACP (802.3ad) forces primary device erroneously.
- Issue #1373: Standby scheduled task still uses hibernate command despite configuration.

**openmediavault-onedrive 6.2.4**

- Update locale files.
- Add some more ‘Monitor interval’ options. Please keep in mind that this also affects the full scan frequency. You can use the OMV_ONEDRIVE_MONITORFULLSCANFREQUENCY environment variable to customize this multiplier if needed (defaults to 12).
