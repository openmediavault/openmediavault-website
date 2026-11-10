---
title: "New update available"
date: 2020-11-17T18:47:35
slug: "new-update-available-154"
categories: ["News"]
---

**openmediavault 5.5.17**

## WARNING … This update might cause problems on systems that are using USB hardware based on JMicron controllers.

- Update locales.
- Issue #842: Fix bug in UDEV rules to workaround a JMicron bug. If your USB controller reports the vendor ‘JMICRON’, then you might be affected by this issue. After installing this package your mounted filesystem configuration might be broken. To fix that, you need to unmount and remount the filesystems that are connected via this USB controller. If the filesystem contains any shared folders, you can’t unmount it, because of that you need to delete all shared folders that are located on the filesystem to be unmounted. Make sure to choose the right menu to only delete the shared folder configuration WITHOUT the content. You can only delete shared folders they are not used by any service, so make sure this applies to these shared folders. After you’ve unmounted these filesystems in the UI, apply the changes, reboot the system and then mount the filesystems again. After that you can reconfigure your shared folders and services from scratch. Sorry for this inconvenience.
- Issue #846: Fix locking issue in SMB recycle bin cleanup and iptables scripts.
