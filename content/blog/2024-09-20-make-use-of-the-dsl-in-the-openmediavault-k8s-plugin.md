---
title: "Make use of the DSL in the openmediavault-k8s plugin"
date: 2024-09-20T20:00:55
slug: "make-use-of-the-dsl-in-the-openmediavault-k8s-plugin"
categories: ["Common"]
---

The recipe editor of the openmediavault-k8s has a DSL (Domain Specific Language) that supports the user in getting specific information from their openmediavault host system in Kubernetes manifests.

The following functions are currently available:

- `hostname()` – Get the hostname of the host.
- `domain()` – Get the domain name of the host.
- `fqdn()` – Get the FQDN of the host.
- `ipaddr(name=NULL)` – Get the IPv4 address of the specified network interface. If not set, the IPv4 address of the interface of the first default route is used.
- `ipaddr6(name=NULL)` – Get the IPv6 address of the specified network interface. If not set, the IPv6 address of the interface of the first default route is used.
- `uid(name)` – Get the UID of the specified user.
- `gid(name)` – Get the GID of the specified group.
- `sharedfolder_path(name)` – Get the full path of the specified shared folder.
- `conf_get(id, uuid=NULL)` – Get the specified database configuration object.
- `tz()` – Get the time zone of the host.

The following filters are currently available:

- `get(key, default=NULL)` – Get the specified key, e.g. `foo.bar.baz` from a dictionary.

For the built-in features of the used template engine please have a look here:

- [Basic knowledge](https://twig.symfony.com/doc/3.x/templates.html)
- [Filters](https://twig.symfony.com/doc/3.x/filters/index.html) and [functions](https://twig.symfony.com/doc/3.x/functions/index.html)

Here are several examples that make use of the DSL:

```
apiVersion: apps/v1
kind: Deployment
metadata:
  labels:
    app.kubernetes.io/instance: wetty
    app.kubernetes.io/name: wetty
  name: wetty
  namespace: wetty-app
spec:
  ...
  template:
    ...
    spec:
      containers:
        - image: docker.io/wettyoss/wetty:latest
          imagePullPolicy: IfNotPresent
          name: wetty
          ports:
            - containerPort: 3000
          securityContext:
            runAsNonRoot: true
            runAsUser: {{ uid('nobody') }}
            runAsGroup: {{ gid('nogroup') }}
          args:
            - "--port=3000"
            - "--base=/"
            - "--force-ssh"
            - "--ssh-port={{ conf_get('conf.service.ssh') | get('port') }}"
            - "--ssh-host={{ hostname() }}"
      restartPolicy: Always
```

```
...
persistence:
    import:
        enabled: true
        type: hostPath
        readOnly: true
        mountPath: /srv/import
        hostPath: {{ sharedfolder_path('images') }}
        hostPathType: Directory
```

```
apiVersion: v1
kind: PersistentVolume
metadata:
  name: config-dir
  labels:
    app.kubernetes.io/instance: plex-media-server
    app.kubernetes.io/name: plex-media-server
spec:
  storageClassName: shared-folder
  capacity:
    storage: 2Gi
  hostPath:
    path: {{ sharedfolder_path('media') }}
    type: Directory
  accessModes:
    - ReadWriteMany
```

```
apiVersion: traefik.containo.us/v1alpha1
kind: IngressRoute
metadata:
  name: immich-websecure
  namespace: immich-app
  ...
spec:
  entryPoints:
    - websecure
  routes:
    - match: Host(`immich.{{ ipaddr() }}.sslip.io`)
      kind: Rule
      services:
        - name: immich-server
          port: 3001
```
