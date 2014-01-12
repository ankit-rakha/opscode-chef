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

package node["package_name"] do

	action :install

end

# start the apache service
# service starts on restart

service node["service_name"] do

	action [:start, :enable]

end

# write to web page

template "#{node["document_root"]}/index.html" do

        source "index.html.erb"
        mode "0644"

end
