---
title: "New update available"
date: 2021-11-07T12:49:37
slug: "new-update-available-176"
categories: ["News"]
---

**openmediavault 5.6.19**

- Add ‘WWN’ column in disk and SMART devices pages. The column is hidden by default.
- Improve SMART assessment. Take attribute 187 into account.
- Issue #1125: Custom /etc/issue is being overwritten. Re-introduce environment variable OMV_ISSUE_APPLY_PRELOGIN_MESSAGE to prevent overwriting custom /etc/issue files.
