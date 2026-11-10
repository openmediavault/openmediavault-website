---
title: "Added new OMV 0.4.x package repository for third-party packages."
date: 2013-02-24T20:35:25
slug: "added-new-package-repository-for-third-party-packages"
categories: ["News"]
---

The partner package repository will contain packages (no external plugins) offered by third-party developers as a service to OpenMediaVault users. These will be backported/updated packages (e.g. from Debian unstable) to the currently used Debian stable release in OMV. Note, this software is not part of OpenMediaVault and is not tested, use it at your own risk. To add this repository your ‘/etc/apt/sources.list.d/openmediavault.list’ must look like

```
deb http://packages.openmediavault.org/public fedaykin main
# deb http://downloads.sourceforge.net/project/openmediavault/packages fedaykin main

## Uncomment the following line to add software from the proposed repository.
# deb http://packages.openmediavault.org/public fedaykin-proposed main
# deb http://downloads.sourceforge.net/project/openmediavault/packages fedaykin-proposed main

## This software is not part of OpenMediaVault, but is offered by third-party
## developers as a service to OpenMediaVault users.
# deb http://packages.openmediavault.org/public fedaykin partner
# deb http://downloads.sourceforge.net/project/openmediavault/packages fedaykin partner
```

Uncomment one of the last lines to use the third-party package repository.
