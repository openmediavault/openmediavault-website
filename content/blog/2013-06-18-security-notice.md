---
title: "Security advice"
date: 2013-06-18T23:34:13
slug: "security-notice"
categories: ["News"]
---

All users who have installed their system via ISO images should recreate the SSH key for system user ‘root’. To do this please execute the following command as ‘root’ in the CLI:

`ssh-keygen -t rsa -b 4096 -f ~/.ssh/id_rsa -N ''`

Please see Mantis [#0000782](http://bugtracker.openmediavault.org/view.php?id=782) for more information.
