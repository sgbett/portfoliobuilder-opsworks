name             "tools"

maintainer       "sgbett"
maintainer_email "sgbett@remailer.org"
license          "GPL"
description      "misc recipes for portfoliobuilder"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.markdown'))
version          "0.1"

# recommends 'build-essential'
# recommends 'xml'
# recommends 'java'
# recommends 'monit'
# 
# provides 'elasticsearch'
# provides 'elasticsearch::data'
# provides 'elasticsearch::ebs'
# provides 'elasticsearch::aws'
# provides 'elasticsearch::nginx'
# provides 'elasticsearch::proxy'
# provides 'elasticsearch::plugins'
# provides 'elasticsearch::monit'
# provides 'elasticsearch::search_discovery'

provides 'tools::precompile_assets'