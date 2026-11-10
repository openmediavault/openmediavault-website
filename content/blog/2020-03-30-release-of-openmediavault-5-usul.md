---
title: "Release of openmediavault 5 (Usul)"
date: 2020-03-30T16:46:04
slug: "release-of-openmediavault-5-usul"
categories: ["Common"]
---

After a long development phase i am happy to announce the release of openmediavault 5 ([Usul](https://dune.fandom.com/wiki/Usul)).

A big thank you goes to all translators, forum moderators and bug reporters for their contributions and support.

The main features at a glance:

- Using Debian 10 (Buster).
- Use SaltStack to deploy configuration settings. Using ‘omv-salt stage run all’ will deploy the whole system according to the configuration database.
- The omv-salt CLI command superseds omv-mkconf. Note, the command will not only create the configuration files, it will also take care about to start/stop/restart the services.
- The omv-initsystem command has been replaced by ‘omv-confdbadm populate’. This command discovers the current system settings and synchronizes them into the database.
- Add Time Machine support to SMB/CIFS shares.
- Use systemd-logind to handle power button action.
- Use systemd to reboot/shutdown/standby the system.
- Use chrony instead of ntpd.
- Use systemd to configure the network.
- Use periodic filesystem trim instead of online.
- Add storage backend for Areca RAID controllers.
- Disable the ‘/sharedfolder/’ feature by default on new installations because it makes too much problems. It can be enabled by setting the environment variable to ‘OMV_SHAREDFOLDERS_DIR_ENABLED=”YES”‘. Finally run the command ‘omv-salt stage run prepare’ to apply the modified default values and ‘omv-salt deploy run systemd’ to create the unit files.
- Fix ‘Subject Alternative Name missing’ error in self signed SSL certificates.
- Add right-to-left (RTL) support.
- Remember size and position of windows.
- Display ‘Updates available’ status in dashboard widget.
- Display reboot notification.
- …

Current issues:

- Blanks in filesystem labels are not supported.

The whole changelog for openmediavault 5 can be viewed [here](https://github.com/openmediavault/openmediavault/blob/5.x/deb/openmediavault/debian/changelog). The ISO image can be downloaded [here](/download.html).

You can also install OMV5 on every Debian 10 based distribution, e.g. using the [Netinst ISO images,](https://www.debian.org/CD/netinst) Raspbian or … if your platform is not supported. You will find a guide [here](https://forum.openmediavault.org/index.php?thread/25062-install-omv5-on-debian-10-buster/) how you can do that.

Because of the huge changes in this version there is no official migration path from OMV4 to OMV5, which does not mean that it is not possible.

If you have any questions, feel free to post them in the [forum](https://forum.openmediavault.org) or have a look into our [troubleshooting section](https://openmediavault.readthedocs.io/en/5.x/troubleshooting.html).
