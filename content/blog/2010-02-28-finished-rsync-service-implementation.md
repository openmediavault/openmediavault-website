---
title: "Finished Rsync service implementation"
date: 2010-02-28T22:29:28
slug: "finished-rsync-service-implementation"
categories: ["News"]
---

This weekend i finished to implement the Rsync service. OpenMediaVault will act as Rsync server if this is enabled. Also scheduled Rsync jobs are supported which can be local or remote, where remote also support the push and pull modes. The user permission thing is a little bit tricky for Rsync modules when acting as a server, but i think i’ve found a good solution where everybody will be happy. If a rsync server module is read/write enabled only users with read/write and read-only permissions are allowed to contact the module if this is not public/anonymous. If the module is write-only then only users with read/write permissions are allowed to use this module.

[![](/wp-content/uploads/2010/02/1267383955063-300x257.png "1267383955063")](/wp-content/uploads/2010/02/1267383955063.png)

[![](/wp-content/uploads/2010/02/1267383996382-300x231.png "1267383996382")](/wp-content/uploads/2010/02/1267383996382.png) [![](/wp-content/uploads/2010/02/1267384008362-300x231.png "1267384008362")](/wp-content/uploads/2010/02/1267384008362.png)

Thanks to the ability to execute commands asynchronously it is also possible to run a job from within the WebUI. For those of you that are interested how it works: There are several RPC methods (start/stop/content) to manage the async command execution and displaying the command output in the WebUI. It was a little bit difficult to find the best implementation because i did not want to give away sensible informations about the command from the backend to the WebUI, on the other hand is should be easy and clear to understand and use. At the end a token (currently the pid of the command) is used to identify the async running command in a RPC call. But stop, there are some additional security checks in the backend that ensure that a RPC can not be used to stop any running command on the server. The pid is used as key to access a structure with all necessary informations which is stored in session. So it is not possible to use this feature to attack the system.

[![](/wp-content/uploads/2010/02/1267384160296-300x190.png "1267384160296")](/wp-content/uploads/2010/02/1267384160296.png)
