---
title: "Features"
url: "/features.html"
ads: true
showDate: false
showAuthor: false
showReadingTime: false
showWordCount: false
showPagination: false
---

{{< adsense >}}

openmediavault includes the following key features:

{{< cards cols="2" >}}
{{< card title="Core" icon="mdi-home" >}}
- Based on Debian Linux
- Web based administration
- Easy system updates via Debian package management
- User management
- Scheduled jobs
- Multilanguage support
- Service announcement via DNS-SD/Zeroconf
- Certificate management
- Plugin system
- …
{{< /card >}}
{{< card title="Networking" icon="mdi-earth" >}}
- Link aggregation
- Wake On Lan
- IPv6 support
- …
{{< /card >}}
{{< card title="Volume management" icon="mdi-database" >}}
- HDD power management (APM/AAM)
- GPT partitions
- EXT3/EXT4/XFS/JFS/Btrfs/… file system support
- Software RAID JBOD/0/1/5/6/…
- Quota (per volume)
- ACL
- Share management
- Snapshot management of shared folders on Btrfs file systems
- Automatic scheduled tasks for Btrfs scrubbing and error checks
- …
{{< /card >}}
{{< card title="Monitoring" icon="mdi-chart-areaspline" >}}
- Syslog
- Watchdog
- S.M.A.R.T.
- SNMP (v1/2c/3) (read-only)
- Email notifications
- Proactive process and system state monitoring
- …
{{< /card >}}
{{< card title="Services" icon="mdi-wrench" >}}
- SSH
- NFS (v3/v4)
- SMB/CIFS
- RSync
- …
{{< /card >}}
{{< card title="Plugins" icon="mdi-puzzle" >}}
With the plugin system it is possible to add additional software/services, e.g.

- 2FA-TOTP
- Antivirus
- DAAP/MPD/RSP server
- LVM
- Shairport
- SNMP
- FTP
- TFTP
- UPS
- USB Backup
- Microsoft OneDrive
- PhotoPrism
- FileBrowser
- SSH web console
- Kubernetes
- […](https://github.com/openmediavault/openmediavault/tree/master/deb)
{{< /card >}}
{{< card title="Apps" icon="si-docker" >}}
With the Kubernetes or Compose plugin it is possible to install containerized/dockerized applications.
{{< /card >}}
{{< /cards >}}
