# WSL2-port-forwarding
This is a manual for those who are struggling with WSL2's isolated network.
Most of ideas come from [WSL#4150](https://github.com/microsoft/WSL/issues/4150#issue-456591548) issue, so it's a summary of core comments.
It will be helpful for people who want to open an ssh server on WSL2.

`wslbridge.ps1` was forked from [edwindijas](https://github.com/microsoft/WSL/issues/4150#issuecomment-504209723)'s comment, and bypassing executionPolicy idea came from [gstorelli](https://github.com/microsoft/WSL/issues/4150#issuecomment-504947432).

## Before you follow...
* Install openssh-server.
* Edit `/etc/ssh/sshd_config` if you want.
* Open `/etc/sudoers` in WSL2 and append `%sudo ALL=NOPASSWD: /usr/sbin/service`. Then `sudo service` won't ask you a password.

## Installation
1. Download this repository.
2. Move wslbridge.ps1 into C:\scripts
3. Open wslbridge.ps1 in a editor (e.g. notepad) and add ports that you need.
4. Open (`Port forwarding.ps1`, `Services for WSL2.ps1`) and replace {password} with yours.
5. Open powershell as admin privilege.
6. Copy each script (`Port forwarding.ps1`, `Services for WSL2.ps1`) and paste it to the shell.

Then, now you open task scheduler and check whether two tasks are sucessfully registered.
