---
title: "New failover package repository"
date: 2016-12-26T00:33:56
slug: "new-failover-package-repository"
categories: ["News"]
---

A new OMV package repository has been established as failover. It is already enabled in OMV3, but you can use it in previous versions if you add

```
deb https://openmediavault.github.io/packages/ DISTRIBUTION main
```

to the file /etc/apt/sources.list.d/openmediavault.list. Replace DISTRIBUTION with the [name of the OMV version](http://wiki.openmediavault.org/index.php?title=Main_Page#Version_History), e.g. erasmus, sardaukar, …
