---
title: "What’s going on …"
date: 2012-01-02T04:50:31
slug: "whats-going-on"
categories: ["News"]
---

I have started to rewrite the configuration import/export code some days ago. The changes done in the latest package updates only contain bug fixes of the old implementation. The code refactoring also includes a redesign of the user/group management which will not store any user/group informations (e.g. plain passwords) in the config.xml file anymore. Thus it will be possible to create users or groups via WebGUI and the console. The backup file will be no plain XML file anymore, instead it will be a compressed archive containing various files that are needed to restore the system to the state when the config backup has been created.

I’ve also started to continue the work on the LVM plugin, but now this has to be delayed again until the config backup/restore feature has been reimplemented.
