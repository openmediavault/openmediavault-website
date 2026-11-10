---
title: "Working with lists in Jinja2"
date: 2017-11-14T10:02:21
slug: "working-with-lists-in-jinja2"
categories: ["Coding"]
---

Working with lists in [Jinja2](http://jinja.pocoo.org/docs) is really simple if you are using the following trick.

```
{%- set vfs_objects = [] %}
{%- if share.recyclebin | to_bool %}
{%- set _ = vfs_objects.append('recycle') %}
...
{%- endif %}
{%- if share.audit | to_bool %}
{%- set _ = vfs_objects.append('full_audit') %}
...
{%- endif %}
vfs objects = {{ vfs_objects | join(' ') }}
```
