Ansible Role - Docker Host: Changelog
=====================================
A list of all the changes made to this repo and the role it contains

Version 1.3.0
-------------

1. Test Kitchen removed
2. Added Ubuntu 26.04 support
3. Removed support for anything below 24.04
   1. Role now assumes Ubuntu only without running checks
4. Replaced Compose v1 with `docker-compose-plugin`
5. `docker-buildx-plugin` is now installed
6. Repository setup modernized
   1. GPG keys are now kept armored at `/etc/apt/keyrings/docker.asc`
   2. The architecture is now detected instead of hardcoded to `amd64`
7. Removed Python PIP tasks as they are no longer needed
8. Removed `linux-image-extra-virtual`
9. All tasks now use fully qualified collection names

Version 1.2.1
-------------

1. Fix PIP issues relating to Ubuntu 24.04

Version 1.2.0
-------------

1. Added Ubuntu 24.04 support
2. Removed Ubuntu 18.04 support

Version 1.1.1
-------------

1. Fixed gpg deprecation warnings caused by `apt-key` in Ubuntu 22.04

Version 1.1.0
-------------

1. Added Ubuntu 22.04 support
2. Removed Ubuntu 16.04 support
3. Kitchen will now use AWS for testing (A change forced by VirtualBox not supporting Apple Silicon)

Version 1.0.1
-------------

1. Adding missing `test-kitchen` gem to Gemfile
2. Removed a python package that breaks docker-compose

Version 1.0.0
-------------

1. Initial Release of repository

Role Changes:

1. Initial release

Return to [README](README.md)
