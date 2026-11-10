---
title: "mdadm: cannot be set as devname. Reason: Not POSIX compatible"
date: 2026-01-03T14:21:18
slug: "mdadm-cannot-be-set-as-devname-reason-not-posix-compatible"
categories: ["Common"]
---

If you are also affected by this warning from the MD subsystem, then take a look at this example to see how you can permanently disable this warning.

With Debian 13, mdadm now enforces POSIX-compliant device names for RAID arrays. Many older RAID arrays (metadata version 1.x) store their name internally in the form `hostname:array` (for example `nas:md0`). While Linux filesystems allow colons in filenames, POSIX standards do not. Debian 13 therefore refuses to use such names when creating block device nodes.

When this happens:

- `mdadm` ignores the stored array name
- the RAID is still assembled correctly using its UUID
- a warning is printed to explain why the name was skipped

This is an intentional change aimed at improving portability, scripting safety, and long-term compatibility. The RAID itself is not damaged or misconfigured; only the legacy naming scheme is affected.

The following example shows how a RAID5 based on 3 drives is modified.

```
root@omv8box:/# cat /proc/mdstat
Personalities : [raid0] [raid1] [raid4] [raid5] [raid6] [raid10]
md127 : active (auto-read-only) raid5 vdd[2] vdb[0] vdc[1]
      2093056 blocks super 1.2 level 5, 512k chunk, algorithm 2 [3/3] [UUU]
unused devices: <none>

root@omv8box:/# mdadm --detail --scan
mdadm: Value "omv8box:0" cannot be set as devname. Reason: Not POSIX compatible. Value ignored.
ARRAY /dev/md/omv8box:0 metadata=1.2 UUID=6b4e1273:61deb387:90439348:6acaeae0

root@omv8box:/# mdadm --stop /dev/md127
mdadm: Value "omv8box:0" cannot be set as devname. Reason: Not POSIX compatible. Value ignored.
mdadm: stopped /dev/md127

root@omv8box:/# mdadm --assemble --update=name --name=md0 /dev/md0 /dev/vdb /dev/vdc /dev/vdd
mdadm: Value "omv8box:0" cannot be set as devname. Reason: Not POSIX compatible. Value ignored.
mdadm: /dev/md0 has been started with 3 drives.

root@omv8box:/# mdadm --detail --scan
mdadm: Value "omv8box:0" cannot be set as devname. Reason: Not POSIX compatible. Value ignored.
ARRAY /dev/md0 metadata=1.2 UUID=6b4e1273:61deb387:90439348:6acaeae0

root@omv8box:/# omv-salt deploy run mdadm

root@omv8box:/# mdadm --detail --scan
ARRAY /dev/md0 metadata=1.2 UUID=6b4e1273:61deb387:90439348:6acaeae0
```
