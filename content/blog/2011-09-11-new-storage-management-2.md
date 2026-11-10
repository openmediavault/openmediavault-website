---
title: "New storage management"
date: 2011-09-11T20:41:54
slug: "new-storage-management-2"
categories: ["Common", "News"]
---

While implementing the LVM plugin i came to the conclusion that the current storage management is too limited. E.g. the current datamodel does not support features like implementing a plugin that allows the user to mount a ISO as shared folder. Because i know that such a feature request will come someday i started to reimplement the datamodel and infrastructure. Now the whole storage management does not need to have any configuration, this means all data is detected during runtime, this also applies to the filesystems. If you mount a filesystem this is the first configuration entry for the whole storage management. Due this code refactoring i hope that the datamodel and backend is nearly ready for every feature. The LVM plugin is currently not finished, because of that i did not show the logical volume administration section. Experts maybe miss some features in the WebGUI, but those can use the console for that because, as i already told above, everything is done during runtime, so changes via console should be visible in the WebGUI too.

{{< youtubeLite id="CW0J6VDQ6Mg" >}}

The new storage management is far from that what i have planned at the beginning: It should be easy to use. Now its a little bit more difficult for novices, but i really did not want to hear anything from special peoples around here why i did not implement it these or that way. Im ready with that, now it is like it is.
