---
title: "How to use Python to execute a RPC"
date: 2017-07-27T15:46:58
slug: "how-to-use-python-to-execute-a-rpc"
categories: ["Misc"]
---

If you want to execute a RPC from an external host using Python, then you should use the following code.

```
import requests
import json

url='http://localhost/rpc.php'

session = requests.Session()
# Login and get the session cookie.
session.post(url, data=json.dumps({
	'service': 'session',
	'method': 'login',
	'params': {
		'username': 'admin',
		'password': 'xyz'
	}
}))
# Execute a RPC.
response = session.post(url, data=json.dumps({
	'service': 'system',
	'method': 'noop',
	'params': None
}))
print(response.json())
# Logout.
session.post(url, data=json.dumps({
	'service': 'session',
	'method': 'logout',
	'params': None
}))
# This RPC should fail because of an invalid session authentication.
response = session.post(url, data=json.dumps({
	'service': 'system',
	'method': 'noop',
	'params': None
}))
print(response.json())
session.close()
```
