---
title: "SUSE Hack Week 17"
date: 2018-07-13T12:28:44
slug: "suse-hack-week-17"
categories: ["News"]
---

During the [SUSE Hack Week](https://hackweek.suse.com/) 17 i continued the [work](https://github.com/openmediavault/openmediavault/pull/132) that i’ve started during the Hack Week 16. In OMV5 the configuration files and services are managed via [Salt Stack](https://saltstack.com/). This required extensive work in the OMV code base, e.g. all `omv-mkconf` scripts had to be rewritten using Jinja2.

The previous command `omv-mkconf` to create the configuration files is now superseded by `omv-salt`.

```bash
# omv-mkconf proftpd
# omv-salt deploy run proftpd
```

You can easily get a list of states via

```bash
# omv-salt deploy list
```

You can also deploy multiple states at once, e.g.

```bash
# omv-salt deploy run nginx interfaces ssh
```

But the most important and greatest thing is that Salt will take care about that the whole system is in a valid state, this means all configuration files are using the latest data from the database and all services are running or stopped according to the configuration in the database. As a plugin developer it is not necessary anymore to start/stop/restart services on your own in the [PHP backend modules](https://github.com/openmediavault/openmediavault/blob/4.x/deb/openmediavault/usr/share/openmediavault/engined/module/proftpd.inc#L50), this is done by the [Salt states](https://github.com/openmediavault/openmediavault/blob/master/deb/openmediavault/srv/salt/omv/deploy/proftpd/default.sls#L31).

The `omv-salt` command also provides the ability to deploy stages. Currently there are 3 [stages](https://github.com/openmediavault/openmediavault/tree/master/deb/openmediavault/srv/salt/omv/stage) available:

- prepare
- deploy
- all

The `prepare` stage is used to prepare the Salt environment (pillar, modules, states) and the `deploy` stage is used to deploy all [configuration states](https://github.com/openmediavault/openmediavault/tree/master/deb/openmediavault/srv/salt/omv/deploy) at once.

```bash
# omv-salt stage run all
```

Currently Salt Stack is using Python2 which requires some workarounds in the [OMV module](https://github.com/openmediavault/openmediavault/blob/master/deb/openmediavault/srv/salt/_modules/omv.py#L29) because the OMV API is already using Python3, but as soon as Salt is ready for Python3 we will adapt the code and make it use of the OMV Python3 API instead of calling CLI tools.
