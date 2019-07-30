## ansible-role-opensuse-lxqt

Ansible playbook for installing and configuring the LXQT desktop for OpenSUSE. The result is a nice 
clean LXQT Desktop together with some KDE utilities like kwrite, dolphin (file manager) and konsole as terminal.

![Desktop](/screenshots/LXQT-Desktop.png)

## How to use

* First make sure your system has a minimal OpenSUSE installation (preferably server mode).
* Run this ansible playbook on the system.

```
curl https://raw.githubusercontent.com/remmelz/ansible-role-opensuse-lxqt/master/tests/run.sh | bash -x
```

### Mozilla Firefox
You might want to play with the font scale level in Mozilla Firefox depending on the resolution of your monitor:
* In Firefox type about:config
  * Set layout.css.devPixelsPerPx for example to 1.10
* Some nice Extensions i use:
  * Bitwarden
  * Ublock origin
  * User-Agent Switcher
  * Noscript Security Suite
