# WSL2-port-forwarding
This is a manual for those who are struggling with WSL2's isolated network.
Most of ideas come from [WSL#4150](https://github.com/microsoft/WSL/issues/4150#issue-456591548) issue, so it's a summary of core comments.

`wslbridge.ps1` was forked from [edwindijas](https://github.com/microsoft/WSL/issues/4150#issuecomment-504209723)'s comment and bypassing executionPolicy idea came from [gstorelli](https://github.com/microsoft/WSL/issues/4150#issuecomment-504947432).

## Before you follow...
* Install openssh-server.
* Edit `/etc/ssh/sshd_config` if you want.
* Open `/etc/sudoers` in WSL2 and append `%sudo ALL=NOPASSWD: /usr/sbin/service`. Then `sudo service` won't ask you password.

## Installation
1. Download `Port Forwarding.xml`, `Sshd for Ubuntu.xml` and `wslbridge.ps1`
2. Move wslbridge.ps1 into C:\scripts
3. Open wslbridge.ps1 and add ports you need.
4. Open task scheduler and import two xml files. `Sshd for Ubuntu.xml` starts ssh service at startup. Thus you don't have to start it manually. Also, `Port Forwarding.xml` forwards ports from windows to WSL2 at startup.
5. Reboot and test as you expected.

