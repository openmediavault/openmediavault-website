---
title: "Styleguide"
url: "/styleguide/"
robots: "noindex"
excludeFromSearch: true
sitemap:
  disable: true
showDate: false
showAuthor: false
showReadingTime: false
showWordCount: false
showPagination: false
---

Internal page to check the look of all content elements in light and dark mode.

## Text

Normal text with **bold**, *italic*, `inline code`, a [link](/about.html) and a <kbd>Ctrl</kbd> + <kbd>C</kbd> key.

> A normal blockquote.

1. Ordered
2. List

- Unordered
- List

| Plugin | Description |
|---|---|
| filebrowser | File managing interface |
| lvm2 | LVM management |

## Code

```bash
wget -O - https://get.openmediavault.io | sh -
```

```console
$ omv-confdbadm read conf.system.network.dns
$ sudo omv-salt deploy run nginx
```

```yaml
version: "3"
services:
  app:
    image: nginx:latest
```

## Alerts

> [!NOTE]
> Useful information that users should know.

> [!TIP]
> Helpful advice for doing things better.

> [!IMPORTANT]
> Key information users need to know.

> [!WARNING]
> Urgent info that needs immediate attention.

> [!CAUTION]
> Advises about risks or negative outcomes.

## Buttons

{{< button href="/download.html" icon="mdi-download" >}}Download{{< /button >}}
{{< button href="/install.html" >}}Install{{< /button >}}
{{< button href="/install.html" class="text" >}}Text button{{< /button >}}

## Cards

{{< cards cols="2" >}}
{{< card title="With title and icon" icon="mdi-home" >}}
- Unordered
- List
{{< /card >}}
{{< card >}}
- Without title
- List
{{< /card >}}
{{< /cards >}}
