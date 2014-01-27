#
# Cookbook Name:: sidekiq
# Recipe:: restart
#

include_recipe "deploy"
include_recipe "sidekiq"
  
node[:deploy].each do |application, deploy|
  if deploy[:application_type] != 'rails'
    Chef::Log.debug("Skipping sidekiq::restart application #{application} as it is not a Rails app")
    next
  end

  service "sidekiq" do
    action :restart
  end
  
#   execute "restart sidekiq" do
#     cwd deploy[:current_path]
#     command "sidekiq restart"
#     action :run
#     
#     only_if do 
#       File.exists?(deploy[:current_path])
#     end
#   end
    
end