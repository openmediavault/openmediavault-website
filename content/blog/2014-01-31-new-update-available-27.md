---
title: "New update available"
date: 2014-01-31T23:30:55
slug: "new-update-available-27"
categories: ["News"]
---

The following changes has been done:

**openmediavault 0.5.32**

- Update locales.
- Fix and improve various issues.
- Add environment variable OMV_USERMGMT_ENUMERATE_USER_ROOT. Set to FALSE in /etc/default/openmediavault to do not list the user ‘root’ in the WebGUI. Defaults to TRUE.
- Display rootfs in ‘Diagnostics | System Information | Status | Disk usage’.
- Improve code to move grid rows via up/down toolbar buttons.
- Simplify code to create the RRD graphs. Thanks to Solo0815 for the hint.
- Add UDEV rule to set ‘noop’ scheduler for non-rotating devices.
- Set sysctl vm.\* values to reduce disk I/O for non-rotating devices. This is done in a system post-install script.
- Mantis 0000956: Make home page text in Plugins a hyperlink.
- Mantis 0000960: Numerical Usernames do not shop up in webinterface.
- Mantis 0000964: Fix bug in IP net addr regular expression.

Please update your system via ‘System > Update Manager’ in the OpenMediaVault WebGUI. Please reload the WebGUI to let the changes installed by the update take effect.
