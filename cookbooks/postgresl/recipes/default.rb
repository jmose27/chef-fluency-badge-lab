#
# Cookbook:: postgresl
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

pakage 'postgresql-server' do
	notifies :run,' execute[postgresql-init]'
end

execute 'pstgresql-init' do
	command 'postgresql-setup initdb'
	action :nothing
end

service 'postgresql' do
	action [:enable, :start]
end
