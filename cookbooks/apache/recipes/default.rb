#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2014, ARC
#
# All rights reserved - Do Not Redistribute
#

# install apache -- chef will not install
# package if it is already installed

package "apache2" do

	action :install

end

# start the apache service
# service starts on restart

service "apache2" do

	action [:start, :enable]

end

# write to web page

cookbook_file "/var/www/index.html" do

	source "index.html"
	mode "0644"

end
