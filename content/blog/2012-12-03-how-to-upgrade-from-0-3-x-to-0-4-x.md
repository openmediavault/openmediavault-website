---
title: "How to upgrade from 0.3.x to 0.4.x"
date: 2012-12-03T19:09:12
slug: "how-to-upgrade-from-0-3-x-to-0-4-x"
categories: ["News"]
---

To upgrade a 0.3.x system to 0.4.x you have to make sure your system is using 0.3.7.1. If not, use the WebGUI update management or the following CLI command:

`apt-get update
apt-get upgrade`

After that you can upgrade your system to 0.4.x using the following command:

`omv-release-upgrade`

Please make sure that there are 0.4.x versions of your installed plugins available before upgrading the system.
