---
title: "Current project state"
date: 2011-12-07T23:17:22
slug: "current-project-state"
categories: ["News"]
---

No new updates does not mean development has been stopped. Since the release of OMV various issues came up which have to be improved in the next time. One of the important ones are:

- Improve user homes implementation.
- Modify/simplify shared folder permission handling.
- Split WebGUI and RPC processing into different parts. A daemon process will handle the RPC request and communicates via socket with the WebGUI.
- Use an embedded XML database instead of a plain XML file for configuration. Currently Sedna or Oracle DBXML are my favorites. Why using a XML database and not SQLite or something else? Because OMV is already using a XML file for its configuration and the complete backend is using XPath/XQuery when generating the configuration files. Using a XML database will not need to change the backend, too. Why using an embedded database? Because the current plain file does not support transaction handling (most important problem right at the moment) and all the features a database has. When starting OMV long time ago i did not think about that this will become a problem (due FreeNAS has no probs with a plain file for years), but things change.
