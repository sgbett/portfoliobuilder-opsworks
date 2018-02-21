MIRROR='https://s3-eu-west-1.amazonaws.com'
LOCATION='portfoliobuilder-eu'
VERSION='0.12.4'

FILENAME="wkhtmltox-#{VERSION}_linux-generic-amd64.tar.xz"

remote_file "/tmp/#{FILENAME}" do
  source "#{MIRROR}/#{LOCATION}/#{FILENAME}"
  mode 0644
#  checksum "242ace909f22c4f8e4f58a59cc4319b96ea47ac3440b27c2a58081be8b840eb1"
end

bash "install-wkhtmltox" do
  cwd "/tmp"
  code <<-EOF
    tar -xvf #{FILENAME}
    cp -av wkhtmltox/* /usr/local/
  EOF
end