#
# Cookbook Name:: pandas
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

execute "#{Chef::Config[:file_cache_path]}/pandas" do
	command "sudo pip install numpy"
	ignore_failure true
end

execute "#{Chef::Config[:file_cache_path]}/pandas" do
	command "sudo pip install /srv/pandas/"
	ignore_failure true
end

