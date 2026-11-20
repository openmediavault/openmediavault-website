{{- $name := .File.ContentBaseName | replaceRE `^\d{4}-\d{2}-\d{2}-` "" -}}
{{- $hash := printf "%s-%d" $name now.UnixNano | crypto.SHA1 -}}
---
title: "{{ $name | replaceRE "-" " " | humanize }}"
date: {{ now.Format "2006-01-02T15:04:05" }}
slug: "{{ $name }}-{{ substr $hash 0 8 }}"
categories: ["News"]
---

**openmediavault x.y.z**

* Change one.
