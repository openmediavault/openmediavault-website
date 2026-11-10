---
title: "Declarative dashboard widgets in OMV6"
date: 2021-03-08T19:56:37
slug: "declarative-dashboard-widgets-in-omv6"
categories: ["News"]
---

In OMV6 dashboard widgets are implemented in a declarative style. Drop a YAML file into a special folder, create a new RPC endpoint or use an existing one, run the *omv-mkworkbench* CLI command to generate the Workbench UI configuration and you’re done.

![](/wp-content/uploads/2021/03/omv6_new_dashboard-1024x581.png)

The code for the *Memory* and *CPU Usage* widget looks like:

```
version: "1.0"
type: dashboard-widget
data:
  id: 20ac67db-b6b5-429c-a304-9a1a4fbb9ea9
  title: Memory
  type: chart
  permissions:
    role:
    - admin
  chart:
    type: advanced-doughnut
    request:
      service: System
      method: getInformation
    label:
      display: true
      formatter: template
      formatterConfig: "{{ value | binaryunit }}"
    dataConfig:
    - label: Free
      prop: memFree
      backgroundColor: "#4cd964"
    - label: Used
      prop: memUsed
      backgroundColor: "#ff3b30"
```

```
version: "1.0"
type: dashboard-widget
data:
  id: 9984d6cc-741b-4fda-85bf-fc6471a61e97
  permissions:
    role:
      - admin
  title: _("CPU")
  type: chart
  chart:
    type: gauge
    request:
      service: System
      method: getInformation
      transform:
        cpuDiff: "{{ 100.0 - cpuUsage }}"
    label:
      display: true
      formatter: template
      formatterConfig: "{{ value }}%"
    dataConfig:
      - label: Usage
        prop: cpuUsage
        backgroundColor: "#5dacdf"
      - label: ""
        prop: cpuDiff
        backgroundColor: whitesmoke
```

A datatable widget will look like:

```
version: "1.0"
type: dashboard-widget
data:
  id: 1dc0ac9a-df14-11ea-8342-6fcac5f2e571
  title: _("File Systems")
  type: datatable
  permissions:
    role:
    - admin
  datatable:
    columns:
    - name: _("Device")
      prop: canonicaldevicefile
      flexGrow: 1
      sortable: true
    - name: _("Label")
      prop: label
      flexGrow: 1
      sortable: true
      hidden: true
    - name: _("Total")
      prop: size
      flexGrow: 1
      sortable: true
      cellTemplateName: template
      cellTemplateConfig: '{{ size | tobytes | binaryunit | notavailable("-") }}'
    - name: _("Available")
      prop: available
      flexGrow: 1
      sortable: true
      cellTemplateName: template
      cellTemplateConfig: '{{ available | tobytes | binaryunit | notavailable("-") }}'
    - name: _("Used")
      prop: used
      flexGrow: 1
      sortable: true
      cellTemplateName: template
      cellTemplateConfig: '{{ used | tobytes | binaryunit | notavailable("-") }}'
    store:
      proxy:
        service: FileSystemMgmt
        get:
          method: enumerateFilesystems
    sorters:
    - dir: asc
      prop: devicefile
```
