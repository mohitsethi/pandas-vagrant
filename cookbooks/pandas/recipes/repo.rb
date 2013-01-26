#
# Cookbook Name:: pandas
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

directory "/srv" do
	action :create
	owner 'vagrant'
	group 'vagrant'
end


git "#{Chef::Config[:file_cache_path]}/pandas.git"  do
	repository "https://github.com/devscale/pandas.git"
	revision "master"
	destination "/srv/pandas"
	action :checkout
end