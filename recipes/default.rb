#
# Cookbook Name:: ldap
# Recipe:: default
#
# Copyright (C) 2013 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

node.default[:ldap][:domain_suffix] = node[:ldap][:domain].split('.').collect {|n| "dc=#{n}"}.join(',')
node.default[:ldap][:rootDN] = "#{node[:ldap][:root_user_attr]},#{node[:ldap][:domain_suffix]}"

include_recipe 'ldap::install'
include_recipe 'ldap::createdb'

service 'slapd' do
  action [:start]
end

