Ansible Role - Docker Host
==========================
This repo contains the Docker Host (docker_host) Ansible role.

What this role does
-------------------
Install and configure the core requirements for working with Docker on Ubuntu-based systems.

This role performs the following:

1. Add the Docker official repository
2. Install Docker and Docker Compose
3. Install some apt package and Python prerequisites for managing Docker via Ansible
4. Make sure Docker is running and set to start on boot.

Variables
---------
This Ansible role does not have any variables.

Testing
-------
This role is fully tested via Test Kitchen using sample inventory data contained in this repo.  
[TESTING.md](TESTING.md) contains details and instructions for testing. 
