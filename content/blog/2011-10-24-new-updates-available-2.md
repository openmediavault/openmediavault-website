---
title: "New updates available"
date: 2011-10-24T21:03:26
slug: "new-updates-available-2"
categories: ["News"]
---

openmediavault 0.2.4.5

- Mantis 0000114: NFS service does not advertise more than one shared folder via avahi
- Mantis 0000126: omv-firstaid: error while configuring WebGUI
- Mantis 0000128: Update Manager no longer shows list of available updates.
- Mantis 0000131: FTP – Invalid Method Parameter when enabling SSL/TLS

openmediavault-transmissionbt 0.2.2

- Mantis 0000132: DHT is not disabled if selects as disabled in webgui

Because of an error in the APT preferences it is not possible to update the systems via internet since 0.2.4.2. In some situations new updates are not shown in the update manager view. In this case you have to download the latest openmediavault package from the [package repository](http://packages.openmediavault.org/public/pool/main/o/openmediavault/) and upload the package manually via the WebGUI. After that online updates should work again.
