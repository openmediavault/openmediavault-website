---
title: "New updates available"
date: 2025-06-30T10:05:06
slug: "new-updates-available-174"
categories: ["News"]
---

**openmediavault 7.7.10**

- Add `ID` column, hidden by default, to the `User/Group Permissions` table on the `Storage | Shared Folders | ACL` page. Additionally display the UID and GID in the `Owner` and `Group` dropdown boxes.

**openmediavault-filebrowser 7.0.2**

- Set filebrowser image tag to `v2.32.0`.

**openmediavault-k8s 7.4.10**

- Allow the deletion of PVs and PVCs in `Failed` phase.
- Fix the file mode bits of the systemd unit file k3s.service to prevent `is marked world-writable` warnings.
- Disable Kong admin UI which is part of the Kubernetes Dashboard.
- Prevent Kong container from crashing due `Address already in use`.
- Add `Services | Kubernetes | Resources | Stateful Sets` page.
- Add `Version` column to `Services | Kubernetes | Resources | Helm Charts` page.
- Issue #1972: Fix bug when using user defined SSL certificates.
