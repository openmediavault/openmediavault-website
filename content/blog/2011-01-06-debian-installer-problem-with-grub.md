---
title: "Debian installer problem with GRUB"
date: 2011-01-06T19:39:03
slug: "debian-installer-problem-with-grub"
categories: ["Common"]
---

OpenMediaVault is using the Debian installer d-i to install the core system. The install process is preseeded to reduce user interaction and to do not allow the user to choose incorrect settings. While testing i realized that the installation of GRUB fails when the following parameters are given:

- The system is installed on sde for example
- sda-sdd are empty disks

In this case the installation fails with the message that it is not possible to install GRUB on sda. What? sda? I have choosen /dev/sde to install the core system. Why the hell is GRUB trying to install itself on sda?

Is this a bug or do i miss something?

The following options are used in the preseed.cfg file:

```

d-i grub-installer/only_debian boolean true
d-i grub-installer/with_other_os boolean true
```

Any tipps or suggestions?

**Update:**
The bug also appears when using the latest Squeeze netinst ISO. [A bug has been reported to Debian grub-installer package](http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=609314).
