---
title: "User authentication via LDAP plugin"
date: 2012-08-19T17:00:12
slug: "directory-service-ldap-plugin"
categories: ["News"]
---

A new plugin adding user authentication via LDAP has been released. Note, this is still beta, suggestions and fixes are welcome, please use http://bugtracker.openmediavault.org to report them. You can install it using the plugin manager in the WebGUI.

[![](/wp-content/uploads/2012/08/dirserviceldap.png "LDAP Directory Service")](/wp-content/uploads/2012/08/dirserviceldap.png)

The FTP service already works, for SSH and SMB/CIFS i was not able to test them because the used Zentyal installation seems not to contain the required objectClasses (e.g. shadowAccount) to work properly with these services.
