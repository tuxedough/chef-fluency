#
# Cookbook:: motd
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

hostname = node['hostname']

file '/etc/motd' do
	content "Welcome to Server #{hostname}"
end
