## ansible-role-opensuse-lxqt

Ansible playbook for installing and configuring the LXQT desktop for OpenSUSE.

## How to use

* Install a minimal OpenSUSE installation (server mode).
* Run this ansible playbook on the system.

    curl https://raw.githubusercontent.com/remmelz/ansible-role-opensuse-lxqt/master/tests/run.sh | bash -x

### Mozilla Firefox
These settings needs to be done manually or one can use the Firefox sync account:
* In about:config
  * Set layout.css.devPixelsPerPx to 1.10
* Some nice Extensions:
  * Bitwarden
  * Ublock origin
  * User-Agent Switcher
  * Noscript Security Suite
