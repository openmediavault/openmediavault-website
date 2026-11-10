---
title: "New update available"
date: 2018-09-11T21:27:43
slug: "new-update-available-112"
categories: ["News"]
---

The following changes were made:

**openmediavault 4.1.11**

- Update locales.
- Various CSS improvements.
- Use relative URL paths. Thanks to zguithues for showing this problem.
- Issue #167: Improve \OMV\System\Process::setEnv() method to allow plugin developers to disable localization when applications are executed. Default is LANG=C.
- Improve ‘Check RRD database’ in omv-firstaid. Handle errors like ‘ERROR: ‘…/cpu-0/cpu-nice.rrd’ is not an RRD file’.
- Issue #169: Make sure cron-apt refrain file does not exist.
- Issue #170: Fix locale bug in PHP autoloader.
