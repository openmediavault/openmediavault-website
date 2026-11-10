---
title: "New update available"
date: 2020-04-14T19:35:23
slug: "new-update-available-135"
categories: ["News"]
---

**openmediavault 5.3.10**

- Fix bug in the Python RPC error handling. This should fix the “got an unexpected keyword argument ‘http_status_code'” issue.
- Add user ‘admin’ to the Postfix recipient_canonical configuration.
- Issue #670: Bonding interface configuration gets messed by VLAN.
- Issue #671: Shared folders with blanks which are used as bind mounts are not formatted correct in /etc/fstab. Nevertheless it is not possible to mount such bind mounts because of an error in SaltStack, see #524, #566 or https://github.com/saltstack/salt/issues/54508.
