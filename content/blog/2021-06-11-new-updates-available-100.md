---
title: "New updates available"
date: 2021-06-11T18:12:38
slug: "new-updates-available-100"
categories: ["News"]
---

**openmediavault 5.6.9**

- Update locales.
- Issue #920: Add postfix throttling. The maximal number of parallel deliveries to the same destination is limited to 2. A delay of 1s between each message to the same receiving domain is set. Both can be customized by the following environment variables: OMV_POSTFIX_MAIN_DEFAULT_DESTINATION_CONCURRENCY_LIMIT and OMV_POSTFIX_MAIN_DEFAULT_DESTINATION_RATE_DELAY. Throttling can be disabled via OMV_POSTFIX_MAIN_THROTTLING_ENABLED.

**openmediavault-clamav 5.0.12**

- Update locales.

**openmediavault-nut 5.2.2**

- Update locales.

**openmediavault-shairport 5.0.4**

- Update locales.

**openmediavault-snmp 5.0.3**

- Update locales.

**openmediavault-tftp 5.0.2**

- Update locales.

**openmediavault-usbbackup 5.0.9**

- Update locales.
