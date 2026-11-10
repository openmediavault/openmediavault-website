---
title: "New updates available"
date: 2011-11-05T19:46:05
slug: "new-updates-available-4"
categories: ["News"]
---

openmediavault 0.2.4.9

- Improve hdparm.conf creation. Write meaningful options only.
- Fix email notification for mdadm and cron-apt
- Improve WebGUI login authentication
- Mantis 0000220: CRON-APT Email From is Wrong
- Mantis 0000228: PHP upload_max_filesize setting prevents installing plugins over 2MB from web gui. Changed to 25M.

openmediavault-transmissionbt 0.2.3

- Mantis 0000224: transmissionbt daily Cron

Please update your system via ‘System > Update Manager’ in the OpenMediaVault WebGUI.

If you got some strange error messages in the upgrade dialog (e.g. warnings about duplicate files or something with \*.dpkg-new), then there was a problem with APT and conffiles. To solve the problem execute the following command in the CLI:

`apt-get install --reinstall openmediavault`
