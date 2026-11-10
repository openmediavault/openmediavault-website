---
title: "OMV6 (Shaitan) RC1 released"
date: 2021-11-08T21:46:46
slug: "omv6-rc1-released"
categories: ["News"]
---

Today the first release candidate (*6.0-34*) of OMV6 ([Shaitan](https://dune.fandom.com/wiki/Shaitan)) has been released.

- [![](/wp-content/uploads/2021/11/omv6_login-1024x703.png)](/wp-content/uploads/2021/11/omv6_login.png)
- [![](/wp-content/uploads/2021/11/omv6_dashboard-1024x704.png)](/wp-content/uploads/2021/11/omv6_dashboard.png)
- [![](/wp-content/uploads/2021/11/omv6_plugins-1024x704.png)](/wp-content/uploads/2021/11/omv6_plugins.png)

The [CHANGELOG](https://github.com/openmediavault/openmediavault/blob/master/deb/openmediavault/debian/changelog#L1) will list all improvements in this version beside the following:

- Upgrade to Debian 11 (Bullseye)
- New user interface

You can download the ISO image for AMD64 based systems [here](https://sourceforge.net/projects/openmediavault/files/6.0-34/openmediavault_6.0-34-amd64.iso). Additionally to the ISO installation you can install OMV on a Debian 11 based system according to the [guide](https://forum.openmediavault.org/index.php?thread/39490-install-omv6-on-debian-11-bullseye/) posted in the [forum](https://forum.openmediavault.org).

OMV5 systems with version *5.6.18* or later can be upgraded via the command line tool *omv-release-upgrade*. Please note that this migration path has not yet been tested with many systems. The project is looking for volunteers to support us and report errors in the [bug tracker](https://github.com/openmediavault/openmediavault/issues).

Before you update your system, please check whether all your installed plugins have already been adapted for OMV6. All plugins in the openmediavault repository have been adapted; for the [omv-extras.org](https://wiki.omv-extras.org/) plugins please check [this forum post](https://forum.openmediavault.org/index.php?thread/39815-omv-extras-plugins-porting-progress-to-omv-6-x/).

RPi users might be interested in this [blog post](https://forum.openmediavault.org/index.php?thread/40729-omv-6-x-on-rpi/).

Please consider whether you want to install this version on a productive system. I did my best to make this version as stable as possible, but there are certainly special cases that cause problems.

If you find any bugs, please report them [here](https://github.com/openmediavault/openmediavault/issues). Issues related to omv-extras.org plugins should be reported [here](https://github.com/orgs/OpenMediaVault-Plugin-Developers/repositories?type=source).
