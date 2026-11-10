---
title: "PAM feature request for PHP8"
date: 2020-08-21T08:21:00
slug: "pam-feature-request-for-php8"
categories: ["Coding"]
---

Today i created a [feature request for PHP8](https://bugs.php.net/bug.php?id=80004) because i fear that the new upcoming major release will not support PAM anymore. With PHP7 this is already a pain because the PAM PECL extension needs to be [patched](https://github.com/openmediavault/openmediavault/tree/master/deb/php-pam) to get it working. I fear this workaround will become a dead end for PHP8. This will be a major issue because OMV is requiring this feature. And i don’t think OMV is the only one that wants to use PAM for authentication. IMO this is an essential requirement for a programming language that is used in professional applications.

Hopefully this issue will become a broader attention due this blog post and feature request to increase the possibility to fully integrate PAM support in PHP8. If you want to support that please feel free to add a comment to the [feature request](https://bugs.php.net/bug.php?id=80004).
