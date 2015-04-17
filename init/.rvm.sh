#!/usr/bin/env bash

# as of [24.03.2014], installing ruby versions will give you
# a `dyld : Library not loaded` error and the way to get through
# it is to disable binary on install:
# https://twitter.com/mpapis/status/447926386314186752

# install openssl, libyaml dependancies is installed via .brew
echo ""
echo "Installing Ruby 2.2.0"
rvm install 2.2.0 --disable-binary

sleep 1
rvm reload

echo ""
echo "  >   Set 2.1.3 as the default version"
rvm use 2.1.3 --default


# Update OSX SSL Certs
# ---------------------------------------------------------------------

sleep 1
rvm reload

# echo ""
# echo "  >   Update OSX SSL Certificates"
# rvm osx-ssl-certs update all
#
# echo "  >   Auto update SSL Certificates"
# rvm osx-ssl-certs cron install
#
# sleep 1
# rvm reload