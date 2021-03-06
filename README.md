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
1. Download `Port Forwarding.xml`, `Services for WSL2.xml` and `wslbridge.ps1`
2. Move wslbridge.ps1 into C:\scripts
3. Open wslbridge.ps1 and add ports you need.
4. Open task scheduler and import two xml files.
`Services for WSL2.xml` starts ssh service at startup.
Thus you don't have to start it manually.
Moreover, `Port Forwarding.xml` forwards specified ports from windows ip to WSL2 ip at startup.
    1. It may be required to edit xml files to change a username.
    2. Make sure `wsl.exe` is linked to WSL2, not other things: docker, git bash, and so on.
5. Reboot and try `ssh <IP address>`.

