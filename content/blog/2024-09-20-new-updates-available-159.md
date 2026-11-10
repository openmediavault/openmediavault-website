---
title: "New updates available"
date: 2024-09-20T19:19:47
slug: "new-updates-available-159"
categories: ["News"]
---

**openmediavault 7.4.8**

- Update locale files.
- Unify the sorting order of displayed data in the `Disk Temperatures` and `S.M.A.R.T. Status` dashboard widgets for a consistent user experience.
- Issue #1825: Support Xen predictive network interface naming.

**openmediavault-k8s 7.3.1**

- Update locale files.
- Add the `ipaddr` and `ipaddr6` functions to the recipe DSL (Domain Specific Language). These functions allow users to retrieve the IP address of the specified network interface, e.g. `ipaddr('ens6')`. If no network interface name is specified, the IP address of the network interface used for the default route is returned.

**openmediavault-nut 7.0.5**

- Update locale files.
- Make sure the NUT config parser is not irritated by the characters # and = in a password.
