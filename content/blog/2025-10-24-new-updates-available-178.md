---
title: "New updates available"
date: 2025-10-24T13:21:33
slug: "new-updates-available-178"
categories: ["News"]
---

**openmediavault 7.7.19**

- Update locale files.
- Several improvements, e.g. missing translations in the Workbench UI.
- Issue #2012: Fix resizing issue of Dashboard chart widgets.

**openmediavault-k8s 7.4.13**

- Use K3S v1.33.5+k3s1 by default.
- Make sure that images from docker.io/bitnami/ will be pulled from docker.io/bitnamilegacy/ instead.
- Add `OMV_K8S_TRAEFIK_ENTRYPOINT_TRANSPORT_RESPONDINGTIMEOUTS_READTIMEOUT` environment variable to set the `transport.respondingTimeouts.readTimeout` option for the web and websecure Traefik entry points. Adapt this value if you have problems with large file uploads. Defaults to 60s.
