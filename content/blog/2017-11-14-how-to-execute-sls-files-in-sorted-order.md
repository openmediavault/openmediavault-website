---
title: "How to execute SLS files in sorted order"
date: 2017-11-14T10:11:12
slug: "how-to-execute-sls-files-in-sorted-order"
categories: ["Coding"]
---

If you need to ensure that your SLS files are executed in a sorted order, then simply use this init.sls file.

```
{% set dirpath = '/srv/salt' | path_join(slspath) %}

include:
{% for file in salt['file.readdir'](dirpath) | sort %}
{% if file | regex_match('^(\d+.+).sls


, ignorecase=True) %}
  - .{{ file | replace('.sls', '') }}
{% endif %}
{% endfor %}
```
