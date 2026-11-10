---
title: "New update available"
date: 2015-07-20T21:33:22
slug: "new-update-available-63"
categories: ["News"]
---

The following changes were made:

**openmediavault 2.1.2**

- Update locales.
- Do not allow to edit system user/group accounts via WebGUI.
- Add APT hook infrastructure. Drop your scripts in
  - /etc/apt/pre-invoke.d
  - /etc/apt/post-invoke.d
  - /etc/apt/update-pre-invoke.d
  - /etc/apt/update-post-invoke.d
  - /etc/apt/update-post-invoke-success.d
- Mantis 0001365: Ability to add/remove system users to user created groups.
- Mantis 0001368: User password changes field ‘E-Mail’.
- Mantis 0001369: Checkboxes in Dashboard.
