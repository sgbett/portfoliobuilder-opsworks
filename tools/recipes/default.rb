template "/etc/monit/conf.d/elasticsearch.monitrc" do
  mode '0440'
  owner 'root'
  group 'root'
  source "elasticsearch.monitrc.conf.erb"
  notifies :run, 'execute[reload_monit]', :immediately
end
