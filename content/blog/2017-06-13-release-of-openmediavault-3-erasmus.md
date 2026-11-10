---
title: "Release of openmediavault 3 (Erasmus)"
date: 2017-06-13T17:46:20
slug: "release-of-openmediavault-3-erasmus"
categories: ["News"]
---

After a long development phase i am happy to announce the release of openmediavault 3 ([Erasmus](http://dune.wikia.com/wiki/Erasmus)).

A big thank you goes to all translators, forum moderators and bug reports for their contributions and support.

The main features at a glance:

- Using Debian 8 (Jessie)
- Use kernel/firmware backports by default
- Using Sencha ExtJS 6.2 framework for the WebUI
- Adapt backend to systemd
- Complete refactored backend
- Support LVM snapshots
- Add SAN (Subject Alternative Name) to self-signed SSL certificates
- File systems will be mounted according to FHS below /srv now
- Outsource TFTP into a plugin
- Introduce omv-confdbadm command to manage the database via CLI
- Add more UI translations, e.g. catalán
- Enable SSH service by default
- Use predictable device files everywhere
- Improve statistic graph colors for color blind users
- Set SMB/CIFS file/directory masks to values for collaborative workflows
- Improve email notification subsystem
- A daily cron script will email the administrator when there are locked/banned users
- Add module to omv-firstaid to reset the failed login attempt counter
- Reimplement various OMV CLI tools in Python. Most of them can be enhanced via modules/plugins
- Add support for exFAT
- Improve USB and rotational storage device detection
- i386 ISO image has been dropped, only AMD64 is available. See below how to install i386 if needed
- …

The whole changelog for openmediavault 3 can be viewed [here](https://github.com/openmediavault/openmediavault/blob/c159c6b3d7af4992e0ca4b26ea576b6c73c02505/deb/openmediavault/debian/changelog). The ISO image can be downloaded [here](/download.html).

If you plan to migrate your system from OMV2, please check if all used plugins are ready for OMV3. Please note that the whole operating system is upgraded. Because of various database issues in OMV2 that can not be fixed during the upgrade you might run into troubles after the system has been migrated. So please consider to reinstall your system with OMV3. Look [here](https://wiki.openmediavault.org/index.php?title=Updates_to_OMV) how to upgrade your system.

You can also install OMV3 on every Debian 8 based distribution, e.g. using the [netinst ISO images,](https://www.debian.org/CD/netinst) Raspbian, … , if your platform is not supported. You will find a guide [here](https://forum.openmediavault.org/index.php/Thread/16833-Install-OMV3-on-Debian-Jessie/) how you can do that.

If you have any questions, feel free to post them in the [forum](https://forum.openmediavault.org).
