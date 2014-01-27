# Create ES config file
#
template "elasticsearch.yml" do
  path   "/usr/local/elasticsearch.yml"
  source "elasticsearch.yml.erb"
  owner 'elasticsearch' and group 'elasticsearch' and mode 0755
end