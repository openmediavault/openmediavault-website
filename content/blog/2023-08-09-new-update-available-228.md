---
title: "New update available"
date: 2023-08-09T21:41:16
slug: "new-update-available-228"
categories: ["News"]
---

**openmediavault 6.5.7**

- Various improvements.
- Remove useless Salt state `omv.setup.resolvconf`.
- Fix bug in NFS configuration.

## INFO … It is possible that with version *6.5.0* the database was populated with wrong information about the activated NFS versions. This problem was fixed with *6.5.0-3*. If your system is affected by this issue und you have problems starting the NFS service now, you simply have to go to the NFS settings page and reselect the NFS versions to be activated, save and apply the changes.
