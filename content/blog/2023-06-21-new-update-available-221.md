---
title: "New update available"
date: 2023-06-21T18:43:04
slug: "new-update-available-221"
categories: ["News"]
---

**openmediavault 6.4.5**

- Disable smtpd in Postfix. It is not necessary in sent-only satellite mode.
- Workaround bug in SaltStack `pkg.del_repo` module.
- Improve the security of the Debian backports and security repositories by using `signed-by`.
