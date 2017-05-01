#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

#install apache package for centos
if node['platform_family'] == "rhel"
	package = "httpd"
elsif node['platform_family'] == 'debian'
	package = 'apache2'
end
package 'apache2' do
	package_name pakage
	action :install
end

service 'apache2' do 
	service_name package
	action [:start, :enable]
end

include_recipe 'apache::websites'
