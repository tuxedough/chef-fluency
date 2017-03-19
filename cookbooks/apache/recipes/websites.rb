#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.


file 'default index.html' do
	path '/var/www/html/index.html'
	content 'Hello world! v2.0'
end

webnodes = search('node', 'role:web')

webnodes.each do |node|
	#puts node
end
