#!/bin/bash

# Update system and install Ansible
pacman -Syu --noconfirm
pacman -S ansible --noconfirm

# Run Ansible playbook to complete the installation
pushd ansible

ansible-playbook install.yml

popd

