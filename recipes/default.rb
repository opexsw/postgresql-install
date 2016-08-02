#
# Cookbook Name:: postgresql-install
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#



case node['platform_family']
  when 'debian'
   apt_update 'apt update' do
      action :nothing
    end.run_action(:update)
end

include_recipe 'postgresql::default'	