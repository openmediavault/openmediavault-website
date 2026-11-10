---
title: "New update available"
date: 2023-05-13T20:43:35
slug: "new-update-available-216"
categories: ["News"]
---

**openmediavault 6.3.11**

- Update locale files.
- Upgrade Salt to version 3005.1.
- Issue #1485: Add option to enforce transport encryption per SMB share. Defaults to disabled.
- Issue #1542: Add transmit hash policy support to bond network interfaces.

NOTE … You’ll face the following [error message](https://github.com/saltstack/salt/issues/62334) during the Salt package installation.

```
[ERROR   ] Unable to connect pusher: Stream is closed
```

You can ignore them, the Salt code will be [patched](https://github.com/openmediavault/openmediavault/blob/master/deb/openmediavault/srv/salt/omv/patch/default.sls#L21) by the openmediavault package during installation. After that, there will be no more of these error messages from Salt.
