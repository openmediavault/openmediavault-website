---
title: "New updates available"
date: 2022-03-05T18:15:47
slug: "new-updates-available-111"
categories: ["News"]
---

**openmediavault 6.0.16**

## WARNING … This update might cause problems on systems that are using Genesys USB2.0/SATA adapter.

- Update locale files.
- Monitor bridge network interfaces and generate diagnostic graphs.
- Issue #1207: Fix global localization issue. When LANGUAGE env variable is set, the output of various tools can’t be parsed because the output is translated even if LANG=C is set.
- Issue #1229: Add UDEV rule for Genesys USB2.0/SATA adapter to fix the unique serial ID issue. Note that this may affect your current configuration. See [changelog entry of 5.5.21](/blog/2021/01/new-update-available-158/) how to fix that.

**openmediavault-shairport 6.0-7**

- Added OMV_SHAIRPORT_GENERAL_VOLUMERANGEDB environment variable.
