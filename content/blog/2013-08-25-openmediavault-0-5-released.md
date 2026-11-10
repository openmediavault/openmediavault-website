---
title: "OpenMediaVault 0.5 (Sardaukar) released"
date: 2013-08-25T11:17:50
slug: "openmediavault-0-5-released"
categories: ["News"]
---

Today i am proud to release OMV 0.5 (Sardaukar) after a long time of development. The following changes and new features have been implemented:

- Complete refactoring of the backend. The main processing unit/engine has been relocated into a forking daemon process.
- IPv6 support.
- Upgrade WebGUI to Sencha ExtJS 4.2.x.
- Configuration changes are not applied immediatelly, instead the user must press the green button in the upper right corner (beside the language combobox) to do this.
- Add new panel in the ‘System – Network’ section to configure Zeroconf/Service Discovery.
- Add option to enable AIO support for SMB/CIFS. AIO is enabled by default.
- Do not execute a filesystem check during boot on USB devices.
- Mantis 0000472: Add ability to configure notifications.
- Mantis 0000634: Provide a way to see changelogs of available package upgrades before installing.
- Mantis 0000661: Rsync server on OpenMediaVault does not send user/group info.
- Add ability to enable/disable scheduled S.M.A.R.T. tests.
- Add ability to initiate a S.M.A.R.T. test via WebGUI.
- Display a information dialog after the RAID has been created.
- Set swappiness to 30 by default.
- Improve collectd IO issue.
- Many other improvements …

The API documentation for OMV 0.5 is available [here](http://docs.openmediavault.org/).

The ISO images can be downloaded [here](/download.html).

You can upgrade existing systems via CLI. Please note that this is only possible if you have installed the following plugins below, other (3d party) plugins may not be migrated to 0.5 until now and will corrupt your installation.

- openmediavault-clamav
- openmediavault-forkeddaapd
- openmediavault-iscsitarget
- openmediavault-ldap
- openmediavault-lvm2
- openmediavault-netatalk
- openmediavault-nut
- openmediavault-route
- openmediavault-usbbackup

To upgrade a 0.4 (Fedaykin) system to 0.5 (Sardaukar) you have to ensure your system is using 0.4.36 or greater. If not, use the WebGUI update management or the following CLI command:

`apt-get update
apt-get upgrade`

After that you can upgrade your system to 0.5 using the following command:

`omv-release-upgrade`

Thank you to all translators helping to translate the WebGUI into several languages. Further thanks goes to all forum moderators for their help on answering questions from the community.
