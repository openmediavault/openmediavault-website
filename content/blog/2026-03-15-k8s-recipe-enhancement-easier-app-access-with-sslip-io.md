---
title: "K8s recipe enhancement: Easier app access with sslip.io"
date: 2026-03-15T12:31:14
slug: "k8s-recipe-enhancement-easier-app-access-with-sslip-io"
categories: ["News"]
---

The openmediavault Kubernetes plugin (*openmediavault-k8s*) exposes applications through Traefik using subdomain-based URLs. This remains the preferred model because it provides clean routing, good application compatibility, and better service isolation.

Default pattern:

```
https://<APPNAME>.<FQDN>:8443
```

Example:

```
https://whoami.mynas.internal:8443
```

### Why this enhancement was introduced

In many private home networks, users rely on ISP-provided modems/routers with limited DNS functionality. These devices often cannot reliably provide custom DNS records for multiple application subdomains, or they require complex manual workarounds.

As a result, users could complete deployment successfully but still fail to access applications by hostname.

To reduce this friction, recipes were enhanced to support an alternative hostname model based on [sslip.io](https://sslip.io/).

### What sslip.io is and why it helps

[sslip.io](https://sslip.io/) is a public DNS service that resolves hostnames containing an IP address directly to that IP.
This makes it useful in private networks where local DNS cannot resolve `<APPNAME>.<FQDN>` hostnames.

Alternative pattern:

```
https://<APPNAME>.<IP>.sslip.io:8443
```

Example:

```
https://whoami.192.168.1.10.sslip.io:8443
```

This provides a practical fallback for users on constrained home network setups, especially when DNS control on the local router/modem is limited.

### What changed in recipes

Many recipes are now preconfigured to make [sslip.io](https://sslip.io/) usage straightforward. In most cases, users only need to uncomment the corresponding line in the recipe configuration section.

This enhancement was made to:

- simplify deployment for users,
- work around DNS limitations in private local networks,
- and reduce setup failures caused by resolver constraints on consumer routers/modems.

### Recommended approach

- Use `https://<APPNAME>.<FQDN>:8443` when local DNS supports app subdomain resolution.
- Use `https://<APPNAME>.<IP>.sslip.io:8443` when local DNS cannot resolve those names.

This keeps deployment accessible for new users while preserving the preferred DNS model for advanced setups.
