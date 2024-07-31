#!/bin/bash

# Function to install Ansible
install_ansible() {
  if [ -x "$(command -v apt)" ]; then
    sudo apt update
    sudo apt install -y ansible
  elif [ -x "$(command -v dnf)" ]; then
    sudo dnf install -y ansible
  else
    echo "Unsupported package manager. Please install Ansible manually."
    exit 1
  fi
}

# Check if Ansible is installed, if not, install it
if ! command -v ansible &>/dev/null; then
  echo "Ansible is not installed. Installing Ansible..."
  install_ansible
fi

# Set ansible_user variable
ANSIBLE_USER=$(whoami)

# Run the zsh_playbook.yml playbook
ansible-playbook zsh_playbook.yml --connection=local --inventory 127.0.0.1, --extra-vars "ansible_user=${ANSIBLE_USER}" --ask-become-pass
