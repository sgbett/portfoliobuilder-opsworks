remote_file "/tmp/wkhtmltox-0.12.1_linux-precise-amd64.deb" do
  source "http://kent.dl.sourceforge.net/project/wkhtmltopdf/0.12.1/wkhtmltox-0.12.1_linux-precise-amd64.deb"
  mode 0644
  checksum "242ace909f22c4f8e4f58a59cc4319b96ea47ac3440b27c2a58081be8b840eb1"
end

dpkg_package "wkhtmltox" do
  source "/tmp/wkhtmltox-0.12.1_linux-precise-amd64.deb"
  action :install
end