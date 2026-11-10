---
title: "How to compile the iscsitarget kernel modules"
date: 2011-09-18T12:31:37
slug: "how-to-compile-the-iscsitarget-kernel-modules"
categories: ["Common"]
---

The iscsi-target plugin is one of the first plugin implemented in for OMV. When starting with OMV Debian Lenny was used, but during the development OMV switched to Debian Squeeze. While testing the iscsi-target plugin i have to realize that there is no Debian package for the kernel modules anymore. As far as i remember in Lenny there was a package that could be installed from the package repository, but in Squeeze you have to compile it yourself. So all user that want to use the iscsi-target plugion must compile their modules first. But don’t be afraid, this is simple. Before installing the OMV iscsi-target plugin you should start the following command line on your console to compile the required iscsi_trgt.ko module:

`apt-get install iscsitarget-dkms`

That’s all.
