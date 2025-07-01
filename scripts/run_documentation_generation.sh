#!/bin/bash

echo "Running Terraform setup..."
terraform apply -auto-approve terraform/

echo "Running Ansible playbook..."
ansible-playbook ansible/playbook.yml

echo "Generating documentation with Sphinx..."
cd docs
make html
