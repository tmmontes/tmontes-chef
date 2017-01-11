#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright (c) 2017 The Authors, All Rights Reserved.
# Install apache package
# # ## resource name = apache2
# ## package name = httpd
if node['platform_family'] == "rhel"
         package = "httpd"
end
package 'apache2' do
         package_name package
         #package_name 'httpd'
         action :install
end

service 'apache2' do
         service_name 'httpd'
         action [:start, :enable]
end

