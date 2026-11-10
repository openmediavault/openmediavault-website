---
title: "Apple Filing (AFP) plugin finished"
date: 2011-05-09T12:36:42
slug: "apple-networking-afp-plugin-finished"
categories: ["News"]
---

This weekend i’ve implemented the Apple Filing (AFP) plugin for OpenMediaVault. Due to the fact that i do not have a MAC i am not able to test it. Hopefully it does not have too much bugs 🙂 I’ve reduced the number of options in the share configuration page to a minimum number, but it can be enhanced if necessary (feature request). TimeMachine support has been added based on howtos and docs i’ve found in the net.

{{< youtubeLite id="uukSigZ62zA" >}}

Please note the following taken from the official Debian netatalk package:

`OpenSSL support is currently disabled, because of licensing issues: The Free
Software Foundation and Debian consider the GNU General Public License (GPL)
under which Netatalk is licensed to be incompatible with the OpenSSL license.`

Thanks to gcrypt support (introduced in netatalk 2.0.4beta2) the DHX2 UAM provides encrypted access for MacOS X 10.4 and newer, but older releases of MacOS X and MacOS Classic can only connect unencrypted as both of the UAMs DHX and Randnum requires OpenSSL support.

You can build locally with OpenSSL using the following commands:

sudo aptitude install devscripts
sudo aptitude build-dep netatalk
apt-get source netatalk
cd netatalk-\*
dch -l +ssl -D local –force-distribution “Local build with OpenSSL.”
DEB_AUTO_UPDATE_DEBIAN_CONTROL=1 DEB_BUILD_OPTIONS=openssl debuild -us -uc
sudo debi

You my need additional build-dependencies not resolved automatically.

Alternatively you can subscribe to unofficial(!) precompiled packages by adding the following to your /etc/apt/sources.list:

`deb http://debian.jones.dk/ $DIST netatalk`
