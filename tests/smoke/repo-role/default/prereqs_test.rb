#
# Project:: Ansible Role - CHANGEME
#
# Copyright 2020, Route 1337, LLC, All Rights Reserved.
#
# Maintainers:
# - Matthew Ahrenstein: matthew@route1337.com
#
# See LICENSE
#

# Prereqs tests

if ['ubuntu', 'centos'].include?(os[:name])
  # Do something
else
  # Do nothing
end

if os[:name] == 'ubuntu'
  # Do something
elsif os[:name] == 'centos'
  # Do something
else
  # Do nothing
end
