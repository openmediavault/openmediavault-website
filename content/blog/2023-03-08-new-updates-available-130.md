---
title: "New updates available"
date: 2023-03-08T20:45:47
slug: "new-updates-available-130"
categories: ["News"]
---

**openmediavault 6.3.3**

- Update locale files.
- Display hostname in page title.
- The `OMV_SSL_CERTIFICATE_CHECK_EXPIRY_ENABLED` environment variable has been added to be able to disable the daily SSL certificate expiration cron job. Defaults to `yes`.
- Add a prefix to shared folder snapshots that are created via scheduled tasks, e.g. `images@daily_20230228T095758`. Please delete your existing scheduled tasks and recreate them to take advantage of the new naming scheme.
- Add the ability to specify the metric (relative priority) of the default route set via the `Gateway` option in the network interface page.

**openmediavault-diskstats 6.0.3**

- Make sure that the same storage device is not displayed in several tabs. This happened when a storage device was split into several partitions.
