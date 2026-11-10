---
title: "Package repository for 0.4 (Fedaykin) is up"
date: 2012-09-21T22:14:45
slug: "package-repository-for-0-4-fedaykin-is-up"
categories: ["News"]
---

The package repository for the new version 0.4, which is called [Fedaykin](http://dune.wikia.com/wiki/Fedaykin), is up. All plugin developers should adapt their plugins to the new xmlstarlet package. You simply have to replace the following XML entities:

`&quot; to \"
&lt; to <
&gt; to >
&amp; to &`

Have a look [here](http://openmediavault.svn.sourceforge.net/viewvc/openmediavault/trunk/deb/openmediavault/usr/share/openmediavault/scripts/proftpd?r1=289&r2=326) or [here](http://openmediavault.svn.sourceforge.net/viewvc/openmediavault?view=revision&revision=326) for example.

To update an [Omnius](http://dune.wikia.com/wiki/Omnius) installation to [Fedaykin](http://dune.wikia.com/wiki/Fedaykin) you simply have to replace ‘omnius’ with ‘fedaykin’ in /etc/apt/sources.list.d/openmediavault.list. After that execute the following commands:

`apt-get update
apt-get dist-upgrade
reboot`

OpenMediaVault 0.3.x has a feature freeze and will only get bugfixes from now on. New features will be implemented in 0.4.x from today.
