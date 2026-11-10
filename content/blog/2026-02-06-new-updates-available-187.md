---
title: "New updates available"
date: 2026-02-06T11:03:39
slug: "new-updates-available-187"
categories: ["News"]
---

**openmediavault 8.0.10**

- Enable cpupower service only on physical systems.

**openmediavault-k8s 8.2.1**

- Use K3S v1.34.3+k3s3 on new installations. Existing installations won’t be upgraded automatically.

**openmediavault-md 8.0.3**

- Enable mdmonitor.service only and let systemd/udev start it on demand.

**openmediavault-wetty 8.0.1**

- Add the environment variable `OMV_WETTY_APP_CONTAINER_START_OPTIONS` to set additional options for the WeTTY container.

The openmediavault-s3 plugin has been removed because the upstream development has been stopped. Use the openmediavault-k8s or openmediavault-compose plugin to deploy it as a Docker container.
