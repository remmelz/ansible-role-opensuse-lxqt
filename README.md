## ansible-role-opensuse-lxqt

Ansible playbook for installing and configuring the LXQT desktop for OpenSUSE.
The result is a nice clean LXQT Desktop together with some KDE utilities like
kwrite, dolphin (file manager) and konsole as terminal.

![Desktop](/screenshots/LXQT-Desktop.png)

## How to use

* First make sure your system has a minimal OpenSUSE installation (Server mode).
* Run the ansible playbook on the system.

```
curl https://raw.githubusercontent.com/remmelz/ansible-role-opensuse-lxqt/master/install.sh | bash -x
```

