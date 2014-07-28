#
# Cookbook Name:: 1kb-admin
# Recipe:: default
#
# Copyright (C) 2014 1000Bulbs.com
#
# All rights reserved - Do Not Redistribute
#

include_recipe "apt"

chef_gem 'rest-client'

ssh_keys = []

node['1kb-admin']['github_users'].each do |github_user|
  ssh_keys += github_user_keys(github_user)
end

user_account node['1kb-admin']['admin_name'] do
  comment '1000Bulbs Admin User'
  action :create
  ssh_keys ssh_keys
end

group 'sysadmin' do
  members node['1kb-admin']['admin_name']
  append true
end

template "/etc/sudoers.d/#{node['1kb-admin']['admin_name']}" do
  source "user_sudoer.erb"
  mode 0440
  variables({ :user => node['1kb-admin']['admin_name']})
end
