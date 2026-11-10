---
title: "New updates available"
date: 2026-10-18T16:40:13
slug: "new-updates-available-216"
categories: ["News"]
---

**openmediavault 8.5.12**

- Fix rsyslog rate limiting regression.
- Create self-signed SSL certificates as leaf certificates (CA:FALSE) with proper key usage extensions.
- Remove support to create RSA key sizes smaller than 2048-bit.
- Use an APT mirror list for the openmediavault package repositories so that the next one is tried automatically if a repository is not reachable.

> [!IMPORTANT]
> Starting with openmediavault 8.5.12, self-signed SSL certificates are explicitly generated as leaf certificates (`CA:FALSE`) with dedicated server authentication extensions to prevent potential misuse. Users who previously imported an OMV certificate into their operating system’s root trust store are advised to recreate the certificate and remove the old one.

**openmediavault-nut 8.0.8**

- Translate text in dashboard widget.
