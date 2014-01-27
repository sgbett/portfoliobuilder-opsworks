#
# Cookbook Name:: sidekiq
# Recipe:: start
#

include_recipe "deploy"
include_recipe "sidekiq"

node[:deploy].each do |application, deploy|
  if deploy[:application_type] != 'rails'
    Chef::Log.debug("Skipping sidekiq::start application #{application} as it is not a Rails app")
    next
  end
  
  execute "start sidekiq" do
    cwd deploy[:current_path]
    command "sidekiq start"
    action :run
    
    only_if do 
      File.exists?(deploy[:current_path])
    end
  end
    
end