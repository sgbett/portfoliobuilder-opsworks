#thanks to DAVID EISINGER @ VIGET
#http://viget.com/extend/aws-opsworks-lessons-learned

rails_env = new_resource.environment["RAILS_ENV"]
Chef::Log.info("Precompiling assets for RAILS_ENV=#{rails_env}...")

Chef::Log.info("ENV: #{node[:custom_env][:portfoliobuilder].inspect}")

bash "rake assets:precompile" do
  cwd release_path  
  command "bundle exec rake assets:precompile"
  environment node[:custom_env][:portfoliobuilder].merge({RAILS_ENV: rails_env})
end
  
  