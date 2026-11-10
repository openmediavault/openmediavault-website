---
title: "Kubernetes on openmediavault 7"
date: 2024-03-09T14:29:46
slug: "kubernetes-on-openmediavault-7"
categories: ["News"]
---

A preview of the K8s plugin for openmediavault has been released. If you want to run your Docker containers in a Kubernetes environment with all the advantages that Docker or Podman does not offer, then this plugin is for you.

The plugin is based on the amazing [SUSE K3s](https://k3s.io/), a lightweight Kubernetes distribution built for IoT & Edge computing which makes it ideally for running on SBC like Raspberry Pi. The plugin comes with pre-installed cert-manager and Traefik. The Kubernetes Dashboard is available at port 4443 by default. ~~PersistentVolumes (PV) will be auto-created for existing shared folders which will make it easy to consume them via PersistentVolumeClaims (PVC) in your deployments.~~ The LoadBalancer service is running on port 8080 and 8443 by default. You can use your local SSL certificates that are managed via the openmediavault UI, or let cert-manager auto-create a self-signed certificate. Your installed apps can then be reached via subpath like *https://<MY.DOMAIN>:8443/<APP>* or a dedicated NodePort if the application does not provide the ability to run behind a reverse proxy. The plugin is using the embedded etcd to have the ability to expand the single-node cluster with additional nodes. However, this is not the main goal as explained below.

The plugin is designed for use as a single-node to offer users the simple option of using their containers in a Kubernetes environment. The goal is not to build a multi-node infrastructure with it. There is other software for this and this would go beyond the main goal of openmediavault, namely to offer the user a simple NAS solution for SOHO use. Therefore, the whole UI and the infrastructure in the background is designed to install things automatically for the user so that he wants to concentrate on installing the applications. Users who want to customize their Kubernetes environment are not the target of this plugin. The UI will be kept simple. It is only intended to provide a quick overview of the most frequently used resources, to view them and delete them if necessary. The main work should be done using CLI, K9s, Kubernetes Dashboard or other solutions.

At a later stage, it is planned to provide an infrastructure that provides recipes that allow users to easily choose from a selection of applications that they want to install. These recipes are intended to serve as a template for installing known applications without any great knowledge of Kubernetes. These can then be based on Helm charts or, for example, simply on deployments. However, the aim is always to make the configuration as simple as possible for the user.

Any help from the community is welcome for this collection of recipes. Further information will be announced in the near future.

To install the plugin, simply choose the *openmediavault-k8s* one in the plugin page of the openmediavault UI.

Also check out the [this forum post](https://forum.openmediavault.org/index.php?thread/51616-kubernetes-on-omv7/) or the plugin [live in action](https://youtu.be/0C6fkvPrUy8?feature=shared).
