Chef::Log.info("precompiling assets...")
Chef::Log.info(node[:custom_env][:portfoliobuilder].inspect)

execute "rake assets:precompile" do
  cwd "/srv/www/portfoliobuilder/current/"  
  command "bundle exec rake assets:precompile"
  environment node[:custom_env][:portfoliobuilder]
end