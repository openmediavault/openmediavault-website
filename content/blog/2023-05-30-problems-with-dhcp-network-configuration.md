---
title: "Problems with DHCP network configuration"
date: 2023-05-30T21:43:38
slug: "problems-with-dhcp-network-configuration"
categories: ["Common", "News"]
---

We encountered a strange bug in systemd-networkd that causes some troubles on systems which are using DHCP to configure the network interfaces. Because of unknown reasons the systemd-networkd service may crash, e.g. when a new network configuration is applied.

You can workaround by rebooting the system or by running

```bash
systemctl restart systemd-networkd.service
```

several times until

```bash
systemctl status systemd-networkd.service
```

reports the service is running. You can alternatively run the command

```bash
omv-salt deploy run systemd-networkd
```

If everything fails, use static IP addresses until the bug has been fixed upstream by the Debian project.

The bug has been reported upstream at <https://github.com/systemd/systemd/issues/27854> and <https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=1036949>.
