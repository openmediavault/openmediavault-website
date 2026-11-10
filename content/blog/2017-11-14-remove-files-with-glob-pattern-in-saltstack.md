---
title: "Remove files with glob pattern in Saltstack"
date: 2017-11-14T09:53:08
slug: "remove-files-with-glob-pattern-in-saltstack"
categories: ["Coding"]
---

If you want to remove files using a glob pattern the you can not use [salt.states.file.absent](https://docs.saltstack.com/en/latest/ref/states/all/salt.states.file.html#salt.states.file.absent) because it does not support file globbing. To workaround this you can simply use [salt.modules.file.find](https://docs.saltstack.com/en/latest/ref/states/all/salt.states.file.html#salt.states.file.absent).

```
remove_test_files:
  module.run:
    - name: file.find
    - path: "/xxx/yyy/zzz"
    - kwargs:
        iname: "test*"
        delete: "f"
```
