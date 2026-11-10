---
title: "OMV6 – First dashboard impressions"
date: 2020-08-17T13:36:05
slug: "omv6-first-dashboard-impressions"
categories: ["News"]
---

{{< youtubeLite id="F3F6GkzUQx4" >}}

Adding custom dashboard widgets will be as easy as possible. Simply drop a JSON file to a specific directory and run a CLI command.

Examples:

```
{
	"id": "e2ed9a54-df38-11ea-8976-7786e66d5f43",
	"type": "rrd",
	"title": "CPU usage",
	"rrd": {
		"name": "cpu-0-hour.png"
	}
}
```

```
{
	"id": "1dc0ac9a-df14-11ea-8342-6fcac5f2e571",
	"title": "File Systems",
	"type": "datatable",
	"datatable": {
		"columns": [
			{
				"name": "Device",
				"prop": "devicefile",
				"flexGrow": 1,
				"sortable": true
			},
			{
				"name": "Label",
				"prop": "label",
				"flexGrow": 1,
				"sortable": true,
				"hidden": true
			},
			{
				"name": "Total",
				"prop": "size",
				"flexGrow": 1,
				"sortable": true,
				"cellTemplateName": "template",
				"cellTemplateConfig": "{{ size | tobytes | binaryunit | notavailable(\"-\") }}"
			},
			{
				"name": "Available",
				"prop": "available",
				"flexGrow": 1,
				"sortable": true,
				"cellTemplateName": "template",
				"cellTemplateConfig": "{{ available | tobytes | binaryunit | notavailable(\"-\") }}"
			},
			{
				"name": "Used",
				"prop": "used",
				"flexGrow": 1,
				"sortable": true,
				"cellTemplateName": "template",
				"cellTemplateConfig": "{{ used | tobytes | binaryunit | notavailable(\"-\") }}"
			}
		],
		"store": {
			"proxy": {
				"service": "FileSystemMgmt",
				"get": {
					"method": "enumerateFilesystems"
				}
			}
		},
		"sorters": [
			{
				"dir": "asc",
				"prop": "devicefile"
			}
		]
	}
}
```
