---
title: "New update available"
date: 2021-05-16T17:41:57
slug: "new-update-available-167"
categories: ["News"]
---

**openmediavault 5.6.7**

- Update locales.
- Set correct dependency order of the sub-modules apt and cronapt. Because of that bug it might happen that security packages are not auto-installed via cronapt on some systems.
- Issue #1027: Customize nginx monit configuration. Added the environment variables OMV_MONIT_SERVICE_NGINX_CONN_TEST_ENABLED and OMV_MONIT_SERVICE_NGINX_CONN_TEST_ARGS.
