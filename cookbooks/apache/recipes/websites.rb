#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package 'apache2' do
	action :install
end

service 'apache2' do
	action [:enable, :start]
end

file 'default index.html' do
	path '/var/www/html/index.html'
	content 'Hello world!'
end
