---
title: "New updates available"
date: 2023-07-12T14:33:14
slug: "new-updates-available-136"
categories: ["News"]
---

**openmediavault 6.4.9**

- Improve `omv-btrfs-dfree` command which is used by Samba on Btrfs file systems. Use the free space determined via statfs and df instead of the estimated value which was causing problems on several systems.
- Get PCI vendor/subsystem ID of NVMe devices via sysfs.
- Add the `OMV_NFSD_OPTS` environment variable to add custom arguments for rpc.nfsd. This can be used to specify the supported versions of NFS for example. Please check the rpc.nfsd man page for more information.

**openmediavault-owntone 6.0.6**

- Update locale files.
- Add environment variable `OMV_OWNTONE_APP_CONTAINER_START_OPTIONS` to append custom `podman run` arguments.
