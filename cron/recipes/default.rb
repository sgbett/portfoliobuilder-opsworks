cron "daily" do
  hour "12"
  minute "20"
  command "cd /srv/www/portfoliobuilder && bundle exec rake pb:daily"
end
