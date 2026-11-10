---
title: "How to use curl to execute a RPC"
date: 2017-03-29T15:04:15
slug: "how-to-use-curl-to-execute-a-rpc"
categories: ["Misc"]
---

If you want to execute a RPC from the command line on your host system, then you should use the following commands.

```bash
# Login
curl --request POST --cookie-jar cookies.txt --data '{"service":"session","method":"login","params":{"username":"admin","password":"<PASSWORD>"}}' <URL>/rpc.php
# Execute the RPC
curl --request POST --cookie cookies.txt --data '{"service":"<NAME>","method":"<NAME>","params":null}' <URL>/rpc.php
# Logout
curl --request POST --cookie cookies.txt --data '{"service":"session","method":"logout","params":null}' <URL>/rpc.php
```

Example:

```bash
curl --request POST --cookie cookies.txt --data '{"service":"system","method":"noop","params":null}' <URL>/rpc.php
```
