# ansible-terminal-setup

ansible playbook to setup zsh, oh-my-zsh, powerlevel10k, zsh plugins and some commands

## remote hosts

To run on your remote hosts ensure ansible cli is present on you host terminal then replace hosts
in `inventory/hosts.yml` with your target hosts and run

```bash
ansible-playbook zsh_playbook.yml --ask-become-pass
```

## local host

To run on your local host run

```bash
./local_setup.sh
```
