---
title: "Force Salt service.running state to restart the service"
date: 2018-07-12T13:30:30
slug: "force-salt-service-running-state-to-restart-the-service"
categories: ["Coding"]
---

If you want to restart a service using [salt.states.service.running](https://docs.saltstack.com/en/latest/ref/states/all/salt.states.service.html#salt.states.service.running) and you can’t use watch because there is simply nothing to watch for changes, then use the following code:

```
restart_phpfpm_service:
  # Force service.running to always restart the service.
  test.succeed_with_changes:
    - watch_in:
      - service: restart_phpfpm_service
  service.running:
    - name: php7.0-fpm
    - enable: True
```
