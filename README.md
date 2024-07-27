# ansible-terminal-setup
ansible playbook to setup zsh, oh-my-zsh, powerlevel10k, zsh plugins and some commands


To run on you system ensure ansible cli is present on you host terminal then replace hosts in `inventory/hosts.yml` with your target hosts and run

```bash
ansible-playbook zsh_playbook.yml --ask-become-pass
```
