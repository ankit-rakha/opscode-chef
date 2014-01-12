#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2014, ARC
#
# All rights reserved - Do Not Redistribute
#

package_name = "apache2"
service_name = "apache2"
document_root = "/var/www"

if node["platform"] == "centos"

	package_name = "httpd"
	service_name = "httpd"
	document_root = "/var/www/html"

end

# install apache -- chef will not install
# package if it is already installed

package package_name do

	action :install

end

# start the apache service
# service starts on restart

service service_name do

	action [:start, :enable]

end

# write to web page

#cookbook_file "#{document_root}/index.html" do

#	source "index.html"
#	mode "0644"

#end

template "#{document_root}/index.html" do

        source "index.html.erb"
        mode "0644"

end
