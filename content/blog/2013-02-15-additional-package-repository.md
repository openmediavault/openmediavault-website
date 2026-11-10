---
title: "Additional package repository"
date: 2013-02-15T23:56:58
slug: "additional-package-repository"
categories: ["News"]
---

Another package repository is available now. Please add the following line to the file ‘/etc/apt/sources.list.d/openmediavault.list’ if you have connection problems to the projects main package repository.

**0.3.x:**

```
deb http://downloads.sourceforge.net/project/openmediavault/packages omnius main
```

**0.4.x:**

```
deb http://downloads.sourceforge.net/project/openmediavault/packages fedaykin main
```

After that please execute the following command to update the local package database.

```bash
apt-get update
```
