---
title: "New update available"
date: 2024-03-26T20:17:19
slug: "new-update-available-243"
categories: ["News"]
---

**openmediavault-k8s 7.1.0**

- Use a PHP template engine to implement a DSL that allows users to access data from the configuration database and other system information inside their recipes. Right at the moment the following functions are supported: `hostname`, `domain`, `fqdn`, `uid`, `gid`, tz, `sharedfolder_path`, `conf_get`.

Examples:

```
apiVersion: apps/v1
kind: Deployment
...
spec:
  ...
  template:
    metadata:
      ...
    spec:
      containers:
        - securityContext:
            runAsNonRoot: true
            runAsUser: {{ gid('nobody') }}
            runAsGroup: {{ gid('nogroup') }}
          args:
            - "--port 3000"
            - "--base /wetty"
            - "--force-ssh"
            - "--ssh-port {{ conf_get('conf.service.ssh') | get('port') }}"
            - "--ssh-host {{ hostname() }}"
        ...
```

```
apiVersion: apps/v1
kind: Deployment
...
spec:
  ...
  template:
    metadata:
      ...
    spec:
      containers:
        ...
      volumes:
        - name: originals-volume
          hostPath:
            type: Directory
            path: {{ sharedfolder_path('images') }}
```
