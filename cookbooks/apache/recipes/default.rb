#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

if node['platform_family'] == "rhel"
	package = "httpd"
elsif node['platform_family'] == "debian"
	package = "apache2"
end

package 'apache2' do
	package_name package
	action :install
end

service 'apache2' do
	action [:enable, :start]
end

file 'default index.html' do
	path '/var/www/html/index.html'
	content 'Hello world!'
end
