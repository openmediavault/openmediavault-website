---
title: "Plugins administration WebUI part II"
date: 2010-03-21T02:18:34
slug: "plugins-administration-webui-part-ii"
categories: ["News"]
---

After rethinking the plugin functionality i realized that the current implementation does not reflect my requirements. It should be possible to upload plugins via WebUI (which are added to a local APT archive then) and the WebUI should also display plugins that are in the OMV package web archive. So i refactored the WebUI and backend to meet these requirements. It is only possible to install OMV plugins via WebUI (no other \*.deb packages), so the packages must meet a naming convention, otherwise the backend denies uploading and installation.

[![](/wp-content/uploads/2010/03/1269129708013-300x128.png "Plugin administration WebUI")](/wp-content/uploads/2010/03/1269129708013.png)

Note, OMV plugins only contain the files required by the framework, e.g. the scripts, WebUI javascript and backend PHP files. The package(s) the plugin requires additionally are defined as package dependencies (get more informations [here](http://www.debian.org/doc/maint-guide/) and [here](http://tldp.org/HOWTO/html_single/Debian-Binary-Package-Building-HOWTO/)), this means the NAS box must have I-Net access to download these additional packages during installation.

```
Source: openmediavault-transmissionbt
Section: net
Priority: optional
Maintainer: Volker Theile <votdev@gmx.de>
Build-Depends: debhelper (>> 7)
Standards-Version: 3.6.10
Homepage: http://www.openmediavault.org

Package: openmediavault-transmissionbt
Architecture: all
Depends: openmediavault, transmission-daemon (>= 1.77)
Description: OpenMediaVault TransmissionBT (BitTorrent) plugin
 Transmission is a simple BitTorrent client that features a very simple and
 intuitive interface.
```

I do not plan to implement a special plugin package management that does not need network access to get these additional packages (which means the additional packages are included in one big file).
