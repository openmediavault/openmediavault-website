---
title: "Add TFTP service"
date: 2010-01-16T02:54:24
slug: "add-tftp-service"
categories: ["News"]
---

The next service has been implemented: TFTP. You might think this is the most useless service, but with such small implementations it is much easier to test the framework. For example i found out that the user management is not as powerful as it should be. The problem is that tftpd-hpa runs as user ‘nobody’ per default, but the shared folder UI does not allow to set permissions for that user -> i had rework that soon.

![TFTP service](/wp-content/uploads/2010/01/1263602747077.png "1263602747077")

TFTP service
