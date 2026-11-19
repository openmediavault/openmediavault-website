---
title: "New updates available"
date: 2026-11-19T17:52:27Z
slug: "new-update-available-281"
categories: ["News"]
---

**openmediavault 8.7.0**

- Several UI improvements.
- Fix active state of navigation items sharing a URL prefix.
- Sanitize the HTML and Markdown content of text pages. Thanks to Nader Eloshaiker for submitting a patch.
- Remove the content of the SMB recycle bin relative to its directory. Thanks to Nader Eloshaiker for submitting a patch.
- Do not execute the RPC of the `/download` route if the route has not been opened by the UI itself, e.g. via an external link. Thanks to Nader Eloshaiker for reporting this.
- Add the `allowlist` option to `registerMethod` to restrict the entrypoints (`rpc`, `download`) a RPC may be called through. Thanks to Nader Eloshaiker for reporting the underlying problem.

**openmediavault-k8s 8.2.9**

- Use K3S v1.36.6+k3s1 on new installations. Existing installations won't be upgraded automatically.
- Do not make the K3S kubeconfig file world-readable. Thanks to Nader Eloshaiker for submitting a patch.
- Restrict the RPC method K8s::set to administrators. Thanks to Nader Eloshaiker for submitting a patch.
