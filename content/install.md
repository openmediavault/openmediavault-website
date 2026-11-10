---
title: "Install"
url: "/install.html"
showDate: false
showAuthor: false
showReadingTime: false
showWordCount: false
showPagination: false
---

# {{< icon "mdi-console" >}} Debian

For a quick installation of openmediavault 8 (Synchrony) on an existing Debian 13 (Trixie) system, run the following command as `root` user:

```bash
wget -O - https://get.openmediavault.io | sh -
```

# {{< icon "mdi-server" >}} Bare Metal

To install openmediavault on AMD64 (x86-64) bare metal, download the ISO image from the [Download](/download.html) section and write it to a bootable CD-ROM or USB drive. Boot your target system from the CD-ROM or USB drive and follow the installer prompts, which will guide you through partition and disk selection, network interface configuration, and the initial system setup. The installer is text-based and designed for headless server environments.

A detailed instruction about how to install openmediavault can be found in the official [documentation](https://docs.openmediavault.org/en/stable/installation/index.html).
