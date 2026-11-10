---
title: "New update available"
date: 2020-09-14T18:43:24
slug: "new-update-available-149"
categories: ["News"]
---

**openmediavault 5.5.10**

- Update locales.
- Fix bugs in date/time page. The field ‘Time servers’ was not marked as required when ‘Use NTP server’ was enabled. The field ‘Allowed clients’ was marked as required when ‘Use NTP server’ was disabled.
- Fix bug in omv-firstaid when setting a static IPv6 address.
- Added the environment variables ‘OMV_AVAHIDAEMON_ALLOW_INTERFACES’, ‘OMV_AVAHIDAEMON_ALLOW_POINT_TO_POINT’ and ‘OMV_AVAHIDAEMON_ENABLE_REFLECTOR’ to customize the Avahi/Zeroconf configuration for VPN.
- File systems will not be mounted with the ‘noexec’ option anymore. Existing mount point configurations are not migrated.
- Issue #800: Quotas are not configured after creating a file system.
- Issue #810: Added the ‘OMV_CHRONY_SERVER_POOL_DIRECTIVE’ environment variable to configure the NTP server directive in chrony.conf. Default is ‘server’.
