---
title: "New updates available"
date: 2013-09-22T21:29:39
slug: "new-updates-available-49"
categories: ["News"]
---

The following changes were made:

**openmediavault 0.4.38**

- Mantis 0000842: NFS duplicate export entries.
- Mantis 0000856: Security: Directory Traversal rrd.php.

**openmediavault 0.5.11**

- Mantis 0000736: SMB/CIFS shares used more then once in a service. Causing permission errors and corrupting config.xml.
- Mantis 0000853: ‘omv-mkgraph’ runs every 5 mins. By default it is set to 15min and can be modified via OMV_COLLECTD_RRDTOOL_MKGRAPH_INTERVAL.
- Mantis 0000850: Entering multiple NTP servers results in wrong ntp.conf. Only one timeserver can be set because of some internal restrictions.
- Mantis 0000856: Security: Directory Traversal rrd.php.

Please update your system via ‘System > Update Manager’ in the OpenMediaVault WebGUI. Please reload the WebGUI to let the changes installed by the update take effect.
