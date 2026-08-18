Ansible Role - Docker Host
==========================
This repo contains the Docker Host (docker_host) Ansible role.

What this role does
-------------------
Install and configure the core requirements for working with Docker on Ubuntu-based systems.

This role performs the following:

1. Add the Docker official repository
2. Install Docker Engine, the Buildx plugin and the Compose plugin
3. Install the Python packages needed to manage containers from Ansible
4. Make sure Docker is running and set to start on boot.

Requirements
------------
This role targets Ubuntu 24.04 and newer and assumes Ubuntu without running any distribution checks.

Variables
---------
This Ansible role does not have any variables.

Testing
-------
[TESTING.md](TESTING.md) contains details and instructions for testing.

Donate To Support This Ansible Role
-----------------------------------
Route 1337 LLC's open source code heavily relies on donations. If you find this Ansible role useful, please consider using the GitHub Sponsors button to show your continued support.

Thank you for your support!
