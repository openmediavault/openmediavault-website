---
title: "New updates available"
date: 2023-10-18T17:56:36
slug: "new-updates-available-142"
categories: ["News"]
---

**openmediavault 6.9.4**

- Update locale files.
- Various UI enhancements.

**openmediavault-podman 6.0**

- Initial release.

The new [openmediavault-podman](https://github.com/openmediavault/openmediavault/pull/1616) plugin exists to give users the ability to pull the latest images of the containers that are used by plugins that are based on [Podman](https://podman.io/). These are currently openmediavault-filebrowser, openmediavault-owntone, openmediavault-photoprism, openmediavault-s3 and openmediavault-wetty. Note, to make use of the latest container image, those services need to be restarted via their systemd unit file or by rebooting the system. Additional features are [planned in OMV7](https://github.com/openmediavault/openmediavault/issues/1615).
