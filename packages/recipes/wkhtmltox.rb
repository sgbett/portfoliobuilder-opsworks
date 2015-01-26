MIRROR='http://www.mirrorservice.org/sites/download.sourceforge.net/pub/sourceforge/w/wk/wkhtmltopdf'
VERSION='0.12.2.1'

remote_file "/tmp/wkhtmltox-#{VERSION}_linux-precise-amd64.deb" do
  source "#{MIRROR}/#{VERSION}/wkhtmltox-#{VERSION}_linux-precise-amd64.deb"
  mode 0644
#  checksum "242ace909f22c4f8e4f58a59cc4319b96ea47ac3440b27c2a58081be8b840eb1"
end

dpkg_package "wkhtmltox" do
  source "/tmp/wkhtmltox-#{VERSION}_linux-precise-amd64.deb"
  action :install
end

