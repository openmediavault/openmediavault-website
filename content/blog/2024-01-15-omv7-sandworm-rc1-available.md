---
title: "OMV7 (Sandworm) RC1 available"
date: 2024-01-15T22:07:21
slug: "omv7-sandworm-rc1-available"
categories: ["News"]
---

Today the first release candidate (*7.0-24*) of OMV7 ([Sandworm](https://dune.fandom.com/wiki/Sandworm)) has been released. This time, the release will be more of an evolution than a revolution.

The [CHANGELOG](https://github.com/openmediavault/openmediavault/blob/dc850d3e4a3b6d4660a65d1c302453ea7807e1f0/deb/openmediavault/debian/changelog#L1) will list all improvements in this version alongside the following:

- Upgrade to Debian 12 (Bookworm)
- Package updates and notification will be handled by [unattended-upgrades](https://packages.debian.org/bookworm/unattended-upgrades).
- Relocate Linux MD device (Software RAID) management into a separate plugin.
- Add support for network ethernet devices using device tree aliases, e.g. `endX`.

You can download the ISO image for AMD64 based systems [here](https://sourceforge.net/projects/openmediavault/files/7.0-20/). Please upgrade the system via *omv-upgrade* after the installation. Additionally to the ISO installation you can install OMV on a Debian 12 based system according to the [guide](https://forum.openmediavault.org/index.php?thread/50222-install-omv7-on-debian-12-bookworm/) posted in the [forum](https://forum.openmediavault.org).

If you find any bugs, please report them [here](https://github.com/openmediavault/openmediavault/issues). Issues related to omv-extras.org plugins should be reported [here](https://github.com/orgs/OpenMediaVault-Plugin-Developers/repositories?type=source).
