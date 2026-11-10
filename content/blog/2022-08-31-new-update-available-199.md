---
title: "New update available"
date: 2022-08-31T19:18:54
slug: "new-update-available-199"
categories: ["News"]
---

**openmediavault 6.0.38**

- Packages that are changing dependencies are now installed when pressing the ‘Install packages’ button in the ‘System | Update Management | Updates’ page. This should prevent confusion why packages are kept back in the UI but installed via the CLI command ‘omv-upgrade’.
- Issue #1381: Fixed an error when changing a user that does not yet exist in the database.
- Issue #1383: Fix proftpd issue when ban rules are activated.
