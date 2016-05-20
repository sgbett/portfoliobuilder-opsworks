# setup Sidekiq service per app
node[:deploy].each do |application, deploy|

  directory "#{deploy[:deploy_to]}/shared/scripts" do
    mode '0755'
    recursive true
    owner deploy[:user]
    group deploy[:group]
    action :create
  end

  template "#{deploy[:deploy_to]}/shared/scripts/sidekiq" do
    mode '0755'
    owner deploy[:user]
    group deploy[:group]
    source "sidekiq.service.erb"
    variables(:deploy => deploy, :application => application)
  end

  template "/etc/logrotate.d/sidekiq" do
    mode '0755'
    owner deploy[:user]
    group deploy[:group]
    source "logrotate.conf"
  end
    
  service "sidekiq" do
    start_command "#{deploy[:deploy_to]}/shared/scripts/sidekiq start"
    stop_command "#{deploy[:deploy_to]}/shared/scripts/sidekiq stop"
    restart_command "#{deploy[:deploy_to]}/shared/scripts/sidekiq restart"
    status_command "#{deploy[:deploy_to]}/shared/scripts/sidekiq status"
    action :nothing
  end
end