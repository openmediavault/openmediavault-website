---
title: "OpenMediaVault 0.5 (Sardaukar) tech preview"
date: 2012-11-17T02:33:22
slug: "openmediavault-0-5-sardaukar-tech-preview"
categories: ["News"]
---

I’ve created a small video showing you some new features of the next upcoming release 0.5 (Sardaukar). You won’t see big changes in the WebGUI, but under the hood many things have been improved. The RPC processing has been outsourced to a daemon process. Each RPC request coming from the WebGUI or a CLI command is forked from the daemon as a child process. The API has been cleaned up and simplified, thus creating plugins should be much easier now. Configuration changes won’t get applied immediately anymore, instead the administrator has to press the ‘Apply configuration’ button to apply all changes in one step.

{{< youtubeLite id="pIZLywfBmis" >}}
