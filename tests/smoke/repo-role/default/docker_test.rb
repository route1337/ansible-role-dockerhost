#
# Project:: Ansible Role - Docker Host
#
# Copyright 2020, Route 1337 LLC, All Rights Reserved.
#
# Maintainers:
# - Matthew Ahrenstein: matthew@route1337.com
#
# See LICENSE
#

# Docker tests

if os[:name] == 'ubuntu'

  # Verify the Docker repo deployed
  describe file('/etc/apt/sources.list.d/download_docker_com_linux_ubuntu.list') do
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
    it { should be_mode 0644}
    its(:content) { should match /deb https:\/\/download\.docker\.com\/linux\/ubuntu/ }
  end

  # Verify Docker and Docker Compose are installed
  %w{docker-ce docker-compose}.each do |pkg|
    describe package(pkg) do
      it { should be_installed }
    end
  end

    # Verify packages related to Docker management via Ansible are installed
    %w{python3-dev python3-pip openssl linux-image-extra-virtual}.each do |pkg|
      describe package(pkg) do
        it { should be_installed }
      end
    end

  # Verify the python packages required for Docker management via Ansible are installed
  %w{six setuptools passlib}.each do |pypkg|
    describe pip(pypkg, '/usr/bin/pip3') do
      it {should be_installed }
    end
  end

  # Verify the Docker service is started and enabled at boot
  describe service('docker') do
    it { should be_installed }
    it { should be_running }
    it { should be_enabled }
  end
else
  # Do nothing
end
