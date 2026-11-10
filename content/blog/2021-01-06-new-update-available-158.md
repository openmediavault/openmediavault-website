---
title: "New update available"
date: 2021-01-06T15:24:50
slug: "new-update-available-158"
categories: ["News"]
---

**openmediavault 5.5.21**

## WARNING … This update might cause problems on systems that are using USB hardware based on JMicron controllers.

- Fixing a bug related to BTRFS which crashed the filesystem UI page.
- Improve UDEV rules to workaround a JMicron bug. Debugging should be easier now because the serial_id helper tool behaves like scsi_id and prints out the environment variable ID_SERIAL_SHORT.
  If your USB enclosure reports the vendor ‘JMICRON’ for the attached devices, then this modification might break your configuration because the UDEV rule for those devices has been improved to apply to all JMicron JMS578 SATA 6Gb/s based enclosures. You need to manually take action to fix your configuration.
  After installing this package your mounted filesystem configuration might be broken. To fix that, you need to [unmount](https://openmediavault.readthedocs.io/en/5.x/administration/storage/filesystems.html?highlight=unmount) and remount the filesystems that are connected via this USB enclosure. If the filesystem contains any shared folders, you can’t [unmount](https://openmediavault.readthedocs.io/en/5.x/administration/storage/filesystems.html?highlight=unmount) it, because of that you need to delete all shared folders that are located on the filesystem to be unmounted. That is only possible if the shared folders are not used by any service, so make sure this applies to these shared folders. After you’ve unmounted these filesystems in the UI, apply the changes, reboot the system and then mount the filesystems again. After that you can reconfigure your shared folders and services from scratch. Sorry for this inconvenience.
