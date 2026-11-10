---
title: "Finish implementation of BitTorrent service"
date: 2010-01-08T07:04:26
slug: "finished-implementation-of-bittorrent-service-2"
categories: ["News"]
---

Today i finished the BitTorrent service. Check out the [screenshot](http://sourceforge.net/apps/gallery/openmediavault/index.php?g2_itemId=83) in the OpenMediaVault [gallery](http://sourceforge.net/apps/gallery/openmediavault/index.php?g2_itemId=19). Right at the moment blocklists are not supported. With the new framework from OpenMediaVault the implementation is much cleaner than my previous one in FreeNAS. Thanks to the new modular design the user management is really easy, no right permission hacks are required anymore. Due ACL is used system wide the download directory must only have read/write access for the system internal group ‘debian-transmission’ (really ugly name, ‘BitTorrent’ or something else sounds much better, but debian-transmission is the default user/group name created by the transmission-daemon package) to allow transmission to store the files in the configured download directory.

