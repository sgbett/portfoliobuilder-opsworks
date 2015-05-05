MIRROR='https://s3-eu-west-1.amazonaws.com'
LOCATION='portfoliobuilder-eu'
VERSION='0.12.2.1'

remote_file "/tmp/wkhtmltox-#{VERSION}_linux-precise-amd64.deb" do
  source "#{MIRROR}/#{LOCATION}/wkhtmltox-#{VERSION}_linux-precise-amd64.deb"
  mode 0644
#  checksum "242ace909f22c4f8e4f58a59cc4319b96ea47ac3440b27c2a58081be8b840eb1"
end

dpkg_package "wkhtmltox" do
  source "/tmp/wkhtmltox-#{VERSION}_linux-precise-amd64.deb"
  action :install
end

