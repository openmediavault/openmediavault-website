---
title: "New update available"
date: 2014-01-09T23:52:25
slug: "new-update-available-24"
categories: ["News"]
---

The following changes has been done:

**openmediavault 0.5.30**

- Update locales.
- Fix ExtJS bug EXTJSIV-10029 introduced by Mantis 0000936, see http://www.sencha.com/forum/showthread.php?264958 for more information.
- Mantis 0000937: Error opening FTP-transfer log.
- Mantis 0000945: omv-minify consumes too much cpu. Disable omv-minify for the language dictionary file via OMV_I18N_MINIFY_JS_DICT_FILE=”no” in /etc/default/openmediavault. Defaults to “yes”.

Please update your system via ‘System > Update Manager’ in the OpenMediaVault WebGUI. Please reload the WebGUI to let the changes installed by the update take effect.
