---
title: "Results from SUSE Hack Week"
date: 2017-02-27T17:08:00
slug: "results-from-suse-hack-week"
categories: ["News"]
---

Here are the final results from the SUSE Hack Week 2017:

- Finished the omv-confdbadm CLI tool to administrate the configuration database.
- PHP and Python unit tests have been implemented. Some bugs were found and fixed in OMV3.
- The PHP5-PAM Debian package has been adapted to PHP7.
- OMV4 has been adapted to Debian 9 (Stretch). OMV is working, but there are still issues to be adapted.
- ExtJS6 is used in OMV4.
- Bugfixes in the OMV4 WebUI has been backported to OMV3.

The release name of OMV4 will be *Arrakis.* The work on OMV4 will be stopped or slowed down now because the main priority is the release of OMV3 as soon as possible. Please don’t expect OMV4 before Debian 9.1 is released. For example it is currently not possible to cross build required Debian packages with pbuilder for other platforms except AMD64 and i386. Hopefully this will be fixed with the final Debian 9.

Finally here are some screenshots from the OMV4 WebUI.

[![](/wp-content/uploads/2017/02/omv4_screenshot_1.png)](/wp-content/uploads/2017/02/omv4_screenshot_1.png) [![](/wp-content/uploads/2017/02/omv4_screenshot_2.png)](/wp-content/uploads/2017/02/omv4_screenshot_2.png)
