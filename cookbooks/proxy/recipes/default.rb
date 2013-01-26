#
# Cookbook Name:: proxy
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# Add proxy settings
proxy = 'http://16.216.235.20:8080'
execute "Add proxy settings" do
  command "echo 'http_proxy=#{proxy}' | sudo tee -a /etc/environment"
  not_if  "grep -ir \"#{proxy}\" /etc/environment"
end

proxy_file = "/etc/apt/apt.conf.d/95proxies"
execute "Update proxy settings to apt" do  
  command "sudo touch #{proxy_file}"
  command "echo 'Acquire::http::proxy \"#{proxy}\";Acquire::ftp::proxy \"#{proxy}\";Acquire::https::proxy \"#{proxy}\";' | sudo tee -a #{proxy_file}"  
  not_if "grep -ir \"#{proxy}\" #{proxy_file}"
end
