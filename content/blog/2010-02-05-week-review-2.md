---
title: "Week review"
date: 2010-02-05T23:24:51
slug: "week-review-2"
categories: ["News"]
---

This week the progress slows down again a little bit due another backend refactoring. While implementing the WebGUI user administration i realized that the current implementation was lacking. Due this i began to refactor the PHP/bash script backend and also improved the Debian package postinst script which manages the initial configuration after installing the package.

Now it is possible to modify the password for the WebGUI administrator account ‘admin’ via the default user management.

[![](/wp-content/uploads/2010/02/1265404645002.png "WebGUI administrator account 'admin'")](/wp-content/uploads/2010/02/1265404645002.png)

Also it is possible to enable/disable/force SSL/TLS for the WebGUI.

[![](/wp-content/uploads/2010/02/1265404374714.png "General settings")](/wp-content/uploads/2010/02/1265404374714.png)

Maybe you’ve also noticed that the navigation panel has been redesigned. The plugins are now able to define the order of appearance in the list.
