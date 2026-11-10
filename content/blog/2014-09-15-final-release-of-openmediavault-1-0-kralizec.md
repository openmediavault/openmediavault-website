---
title: "Final release of OpenMediaVault 1.0 (Kralizec)"
date: 2014-09-15T09:13:54
slug: "final-release-of-openmediavault-1-0-kralizec"
categories: ["News"]
---

Today we are happy to release OpenMediaVault version 1.0 ([Kralizec](http://dune.wikia.com/wiki/Kralizec/XD)).

The main features at a glance:

- OMV 1.0 is based on Debian 7 Wheezy
- Better support for weaker systems (i.e. Raspberry Pi, Cubieboard, Cubox, etc)
- Nginx (instead of Apache2) for the WebGUI
- Dashboard with support for widgets
- Systems can be put into standby mode
- Improved infrastructure for plug-ins
- And much more…

Excerpt from the changelog:

- Debian 7 (Wheezy)
- Improvements regarding performance on slower systems (Raspi, …). The list of updates and plugins are indexed, that is, the search for new updates or plugins will not be launched each time when the user invokes the WebGUI to.
- File systems on non-rotating drives are with the mount option ‘discard’ hooked (ext3, ext4, btrfs, vfat, jfs, xfs).
- Infrastructure improvements for plugins
- Systems can be put into standby mode (hybrid suspend / STB, Suspend to disk / STD, Suspend to RAM / STR). There, the mode is automatically selected which is supported by the system. Priority is STB, STD, STR.
- Many bug fixes
- Dashboard with widgets
- Small improvements in various services
- The ClamAV plugin now supports a quarantine
- Use rrdcached to reduce disk I / O of collectd
- Add asynchronous I/O (AIO) support to SMB/CIFS
- Add ability to audit SMB/CIFS file operations per share
- Add button to manually empty the SMB/CIFS recycle bin
- Add feature to revert configuration changes
- Supporting stateless address autoconfiguration (SLAAC) for IPv6 network interfaces
- Supporting stateful address autoconfiguration for IPv6 network interfaces
- Add ability to customize look via WebGUI ‘css/omv-custom.css’ file
- Use php5-fpm FastCGI process manager
- Change webserver from Apache2 to nginx
- Add PFS (Perfect Forward Secrecy) support and other security improvements
- Improve PAM configuration. Block users for 180sec after 3 failed WebGUI login attempts. Check the pam_tally2 manual page for more information.

The whole changelog for 1.0 (versions 0.6 – 1.0.20) can be viewed [here](https://sourceforge.net/p/openmediavault/code/1458/tree/trunk/deb/openmediavault/debian/changelog).

Support is available through the forum: [FAQ](http://forums.openmediavault.org/index.php/Thread/5594-OpenMediaVault-FAQ/), [Upgrade guide](http://forums.openmediavault.org/index.php/Thread/5545-Upgrade-from-latest-OMV-0-5-X-to-OMV-1-0/) from 0.5.x to 1.0 and the general [guide section](http://forums.openmediavault.org/index.php/Board/29-Guides/).

The 32 and 64 bit ISO images can be downloaded [here](https://sourceforge.net/projects/openmediavault/files/1.0.20/).
