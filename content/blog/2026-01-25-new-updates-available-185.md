---
title: "New updates available"
date: 2026-01-25T12:03:12
slug: "new-updates-available-185"
categories: ["News"]
---

**openmediavault 8.0.8**

- Issue #1520: Improve button accessibility by adding aria-label.
- Issue #2115: Language switcher is not visible on mobile devices.
- Issue #2116: Fix RRD graph render issue on mobile devices.

**openmediavault-k8s 7.4.17**

- Ensure the port configuration is correct in Traefik Helm chart.

**openmediavault-k8s 8.1.0**

- Issue #1940: Add UI support to configure additional Load Balancer (Traefik) ports.
- The Load Balancer port `web` will not be exposed by default anymore.
  Please enable it via UI if needed.
- The following environment variables have been removed, please use the new UI functionality instead:
  - OMV_K8S_TRAEFIK_PORTS
  - OMV_K8S_TRAEFIK_ENTRYPOINT_TRANSPORT_RESPONDINGTIMEOUTS_READTIMEOUT
