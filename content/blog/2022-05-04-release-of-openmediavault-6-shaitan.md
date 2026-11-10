---
title: "Release of openmediavault 6 (Shaitan)"
date: 2022-05-04T18:53:11
slug: "release-of-openmediavault-6-shaitan"
categories: ["Common"]
---

After a long development phase i am happy to announce the release of openmediavault 6 ([Shaitan](https://dune.fandom.com/wiki/Shaitan)).

A big thank you goes to all translators, forum moderators and bug reporters for their contributions and support.

The main new features of openmediavault 6:

- Based on Debian 11 (Bullseye).
- Completely new user interface written from scratch.
- Add some new plugins that are based on containers. These are e.g. S3, OwnTone, PhotoPrism, WeTTY, FileBrowser, Onedrive. Please note that not all platforms are supported because the upstream base containers are only available for specific CPU architectures.
- Enhanced ISO installer. Ensure that /media is unmounted to allow installation to USB devices. This will allow the installation from USB to USB device.
- /dev/disk/by-label filesystem device files are not supported anymore because they are not unique and predictable.
- The file system page will only show file systems configured by openmediavault from now on. This is the standard behavior of the user interface that all other pages use.
- openmediavault can’t be installed side-by-side with graphical environments anymore.
- Replace pam_tally2 by pam_faillock.
- Replace CLI tool *omv-update* by *omv-upgrade*.
- Use systemd watchdog instead of separate daemon.
- Add option to FTP settings to display the home directory of the user in the browse list.
- Enhance the SMART temperature monitoring configuration. Global settings can be overwritten per device. Please check your settings whether the migration was correct or reconfigure them if necessary.
- Remove ability to cleanup system logs. This is no longer possible because the data is now fetched from the systemd journal, which cannot be cleaned per unit.
- Support ed25519 SSH public keys in the user settings dialog.
- Add recycle bin support for SMB home directories.
- Add the ability to copy and apply the permissions of a shared folder to its ACL page.
- Disable the ‘Access control list’ button on the shared folder page if the selected entry is located on a non-POSIX compliant file system.
- Enhance the configuration of times of scheduled jobs.
- Disable SMB NetBIOS support by default. You can enable it via the OMV_SAMBA_NMBD_ENABLE environment variable.
- Statically DNS servers will take precedence over the DNS servers received from the DHCP server.
- Force avahi-daemon to only use ethernet, bond and wifi network interfaces that are configured via the UI.
- …

The whole changelog for openmediavault 6 can be viewed [here](https://github.com/openmediavault/openmediavault/blob/master/deb/openmediavault/debian/changelog).

More information about the omv-extras.org plugins can be found [here](https://forum.openmediavault.org/index.php?thread/39815-omv-extras-plugins-porting-progress-to-omv-6-x-done/).

## WARNING … Upgrading from openmediavault 5 might cause problems on systems that are using USB hardware based on JMicron controllers. Have a look [here](/blog/2021/01/new-update-available-158/) and [here](/blog/2020/11/new-update-available-154/) for more information.

## WARNING … Side-by-side installation with graphical environments will be prevented technically.

The ISO image can be downloaded [here](/download.html). You can also install openmediavault 6 on every Debian 11 based distribution, e.g. using the [Netinst ISO images,](https://www.debian.org/CD/netinst) Raspbian or … if your platform is not supported. You will find a guide [here](https://forum.openmediavault.org/index.php?thread/39490-install-omv6-on-debian-11-bullseye/) how you can do that.

Existing openmediavault 5 installations can be migrated by running the *omv-release-upgrade* command in the CLI.

If you have any questions, feel free to post them in the [forum](https://forum.openmediavault.org) or have a look into our [troubleshooting section](https://openmediavault.readthedocs.io/en/6.x/troubleshooting.html).
