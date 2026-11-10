---
title: "Release of openmediavault 4 (Arrakis)"
date: 2018-05-08T21:27:15
slug: "release-of-openmediavault-4-arrakis"
categories: ["News"]
---

After a long development phase i am happy to announce the release of openmediavault 4 ([Arrakis](http://dune.wikia.com/wiki/Arrakis)).

A big thank you goes to all translators, forum moderators and bug reporters for their contributions and support.

The main features at a glance:

- Using Debian 9 (Stretch).
- Shared folders can be accessed via /sharedfolders/<name> in the root filesystem.
- The SNMP feature has been outsourced as plugin. Please note that the existing configuration will be deleted.
- Refactor RRD graph generation. Introduce omv-mkrrdgraph tool.
- Fix various email configuration issues, e.g. problems with Gmail.
- Fix timeout on filesystems page when having many filesystems. Also reduced time to collect filesystem information.
- Improve UI usablility on mobile and touch devices.
- Many fixed bugs and improvements.
- …

The whole changelog for openmediavault 4 can be viewed [here](https://github.com/openmediavault/openmediavault/blob/4.x/deb/openmediavault/debian/changelog). The ISO image can be downloaded [here](/download.html).

If you plan to migrate your system from OMV3, please check if all used plugins are ready for OMV4. Please note that the whole operating system is upgraded. You should therefor consider to reinstall the system from scratch with OMV4.

You can also install OMV4 on every Debian 9 based distribution, e.g. using the [Netinst ISO images,](https://www.debian.org/CD/netinst) Raspbian or … if your platform is not supported. You will find a guide [here](https://forum.openmediavault.org/index.php/Thread/21234-Install-OMV4-on-Debian-9-Stretch/) how you can do that.

If you have any questions, feel free to post them in the [forum](https://forum.openmediavault.org) or have a look into our [troubleshooting section](https://openmediavault.readthedocs.io/en/latest/troubleshooting.html).
