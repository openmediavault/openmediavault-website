---
title: "New updates available"
date: 2022-09-23T20:17:44
slug: "new-updates-available-121"
categories: ["News"]
---

**openmediavault 6.0.41**

- Update locale files.
- Set Postfix mailbox size limit to unlimited by default. This can be customized via the OMV_POSTFIX_MAIN_MAILBOX_SIZE_LIMIT environment variable.
- Don’t be so restrictive with the proxy configuration.
- Fix an issue related to NFS shares when the associated shared folder has been modified.
- Fix an issue related to the hidden mount point configuration objects. Editing those will not flip the ‘hidden’ flag anymore.
- Issue #1393: Add the OMV_SAMBA_SHARE_FRUIT_COPYFILE environment variable. Defaults to ‘yes’.

**openmediavault-sharerootfs 6.0.1**

- Fix mount point configuration.
