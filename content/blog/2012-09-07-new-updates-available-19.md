---
title: "New updates available"
date: 2012-09-07T23:31:19
slug: "new-updates-available-19"
categories: ["News"]
---

The following changes has been done:

**openmediavault 0.3.0.23**

- Various code improvements.
- Update locales.
- Code was modified to meet the coding guidelines.
- Display hostname in page title.
- Fix bug in OMVConfigEngine class.
- Mantis 0000581: Add deb-triggers ‘update-locale’ and ‘update-fileperms’ to replace omv_install_locale and omv_install_fixperms in postinst scripts.
- Mantis 0000582: Plugins page fails completely if dependencies for one plugin are missing.
- Mantis 0000583: Live CPU load display doesn’t work on ARM. Thanks to Stefan Seidel for the patch.
- Mantis 0000585: Russian translation error.
- Mantis 0000593: Broken links on the support page.

**openmediavault-clamav 0.3.0.7**
 **openmediavault-forkeddaapd 0.3.0.5**
 **openmediavault-ldap 0.3.0.2**
 **openmediavault-netatalk 0.3.0.8**
 **openmediavault-nut 0.3.0.6**

- Update locales.
- Code was modified to meet the coding guidelines.
- Mantis 0000581: Add deb-triggers ‘update-locale’ and ‘update-fileperms’ to replace omv_install_locale and omv_install_fixperms in postinst scripts.

**openmediavault-lvm2 0.3.0.8**

- Update locales.
- Code was modified to meet the coding guidelines.
- Improve create/extend logical volume dialogs.
- Mantis 0000581: Add deb-triggers ‘update-locale’ and ‘update-fileperms’ to replace omv_install_locale and omv_install_fixperms in postinst scripts.

**openmediavault-route 0.3.0.1**

- Update locales.

Please update your system via ‘System > Update Manager’ in the OpenMediaVault WebGUI. Please reload the WebGUI to let the changes installed by the update take effect.

The openmediavault-iscsitarget plugin can not be build right at the moment due some changes in the control file to support the ARMEL platform. The error message is:

`dpkg-gencontrol: error: the Depends field contains an arch-specific dependency but the package is architecture all`

Any tip is welcome to fix this issue.
