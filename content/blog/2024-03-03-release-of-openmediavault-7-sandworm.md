---
title: "Release of openmediavault 7 (Sandworm)"
date: 2024-03-03T13:29:21
slug: "release-of-openmediavault-7-sandworm"
categories: ["News"]
---

After a long development phase i am happy to announce the release of openmediavault 7 ([Sandworm](https://dune.fandom.com/wiki/Shaitan)). This version is more of an evolution than a revolution.

A big thank you goes to all translators, forum moderators and bug reporters for their contributions and support.

The [CHANGELOG](https://github.com/openmediavault/openmediavault/blob/9afd459fd88aed8d1035a9836808a6ccafed0ee0/deb/openmediavault/debian/changelog) will list all improvements in this version alongside the following:

- Upgrade to Debian 12 (Bookworm)
- Package updates and notification will be handled by [unattended-upgrades](https://packages.debian.org/bookworm/unattended-upgrades).
- Relocate Linux MD device (Software RAID) management into a separate plugin.
- Add support for network ethernet devices using device tree aliases, e.g. `endX`.
- Replace the `cron-apt` package with `unattended-upgrades` and `apticron`. The former ensures that security updates are installed automatically, and the latter ensures that notifications are sent when new package updates are available.
- The `apt-listchanges` package will send you an email with a summary of the latest changes whenever packages are upgraded.
- Add the ability to authenticate an RPC call by using the `X-OPENMEDIAVAULT-SESSIONID` header instead of a cookie. The session ID is returned with the response of the `Session::login` RPC.
- Reduce the query time when determining the SMART information by reducing the query parameters to the minimum.
- Add a dashboard widget to display the temperatures of all physical disks.
- Add support for choosing between the RSA and Ed25519 types when creating an SSH key in the UI.
- Remove support of importing SSH DSA keys.
- Enhance file system quota deployment.
- Issue #1649: Rearrange the `Storage | Shared Folders | ACL` page.
- Issue #1676: Add an UI endpoint to trigger a download via RPC.
  Plugins can use `/download?service=xxx&method=xxx&params=xxx` to start a download that is implemented in the specified RPC. Note, the JSON content of the `params` argument may be encoded. Check the `encodeURIComponent` JS function for more details.
- Issue #1690: Replace hdparm with smartctl for better hardware support.
- Issue #1706: Add support for ed25519-sk SSH keys.

You can download the ISO image for AMD64 based systems [here](https://sourceforge.net/projects/openmediavault/files/7.0-20/). Please upgrade the system via *omv-upgrade* after the installation. Additionally to the ISO installation you can install OMV on a Debian 12 based system according to the [guide](https://forum.openmediavault.org/index.php?thread/50222-install-omv7-on-debian-12-bookworm/) posted in the [forum](https://forum.openmediavault.org).

If you find any bugs, please report them [here](https://github.com/openmediavault/openmediavault/issues). Issues related to [omv-extras.org](https://wiki.omv-extras.org/) plugins should be reported [here](https://github.com/orgs/OpenMediaVault-Plugin-Developers/repositories?type=source).
