---
title: "OpenMediaVault 0.2 (Ix) has been released"
date: 2011-10-17T20:57:23
slug: "openmediavault-0-2-ix-has-been-released"
categories: ["News"]
---

Today, after 2 years of hard work, i am proud to announce the release of OpenMediaVault. You can download the ISO images at [sourceforge.net/projects/openmediavault/files](https://sourceforge.net/projects/openmediavault/files). Please have a look into the Wiki at [wiki.openmediavault.org](http://wiki.openmediavault.org) for a quick install howto.

For all FreeNAS users, please note that it is only necessary to download and install the ISO once. There is no need of firmware images anymore, updates will come through small packages as it is done in all Debian based distros (e.g. Ubuntu). In OpenMediaVault you also have not to choose between embedded or full installation. The installer uses the whole harddisk for the swap and OS partition. There is no ‘data’ partition anymore. So do not waste diskspace by using a 1 TiB disk 🙂 OMV is designed to be installed on a DOM or small SSD.

Please disconnect all harddisks except the disk used for the OS during the installation, otherwise the Debian installer fails or installs Grub on the wrong harddisk.

Currently the following additional plugins are available:

– AFP
– Bittorent
– iTunes/DAAP server

Because the netatalk package in the Debian Squeeze repository is not 2.2.2 it will not work with the latest iOS. Due i do not have a Apple computer i do not have any intention to fix that problem, this must be done by the community. So if you have any knowledge how to build a Debian package you are welcome to support the community with your contribution.

The following plugins will be released later after the first wave of bugreports has been fixed:

– iSCSI-Target
– UPS
– LVM

For clarification why i decided to use the whole boot disk for the OS:
Why using the whole boot device for the OS? Because this reduces some problems (e.g installation, management, the implementation design, …) and a DOM (Disk on Module) is not really expensive and the best solution for that. In my eyes the user data MUST be seperated from the OS disk.
