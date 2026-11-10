---
title: "OMV8 (Synchrony) released"
date: 2025-12-24T10:39:28
slug: "omv8-synchrony-released"
categories: ["Common"]
---

Since no critical errors were reported during the RC phase, it is now time to release the final version (8.0.1) of OMV8 ([Synchrony](https://dune.fandom.com/wiki/Sandworm)). Due to [technical reasons](https://github.com/openmediavault/openmediavault/issues/1996), only AMD64 and ARM64 architectures will be supported from this version onwards. Since this circumstance had been known for some time, many features planned for OMV8 were already implemented in OMV7 so that the discontinued architectures could also benefit from them. That’s why the list of new features in OMV8 is quite concise. Nevertheless, switching to Debian 13 offers newer software, bug fixes, and improvements.

The [CHANGELOG](https://github.com/openmediavault/openmediavault/blob/bd4a661c712ec775115645e723f89789a5cc1fc2/deb/openmediavault/debian/changelog#L1) will list all improvements in this version alongside the following:

- Upgrade to Debian 13 (Trixie).
- Replace `cpufrequtils` with `linux-cpupower`.
- Improve several user and group related RPCs. Developers should note that the RPCs UserMgmt::enumerateSystemUsers, UserMgmt::enumerateUsers, UserMgmt::enumerateAllUsers and UserMgmt::getUserList now return only basic user information. Set the parameter `detail` to `full` to get more detailed user information. This API change was done to improve the RPC response times dramatically.
- Display updated modules in notification after configuration changes have been applied.
- Display old versions of upgradable packages on the update page.
- Use `pool` instead of `server` directive in chrony configuration by default. This can be customized via the `OMV_CHRONY_SERVER_POOL_DIRECTIVE` environment variable.
- Many other improvements.
- Issue #1737 and #1866: Add support for WPA3 (SAE) authentication for wireless connections.
- Issue #2066: Prevent scripts/tools from getting stuck when calling mail/sendmail if email notifications are disabled.
- Issue #1555: Add ability to SMB shares to limit the reported disk size for Time Machine.

You can download the ISO image for AMD64 based systems [here](https://sourceforge.net/projects/openmediavault/files/iso/8.0-12/). Please upgrade the system via *omv-upgrade* after the installation to get the latest package versions. Additionally to the ISO installation you can install OMV on a Debian 13 based system according to the [documentation](https://docs.openmediavault.org/en/8.x/installation/on_debian.html). OMV7 based systems can be upgraded via the *omv-release-upgrade* command line tool.

If you find any bugs, please report them [here](https://github.com/openmediavault/openmediavault/issues). Issues related to [omv-extras.org](https://www.omv-extras.org) plugins should be reported [here](https://github.com/orgs/OpenMediaVault-Plugin-Developers/repositories?type=source).
