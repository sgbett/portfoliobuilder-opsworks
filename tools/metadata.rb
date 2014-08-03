name             "tools"

maintainer       "sgbett"
maintainer_email "sgbett@remailer.org"
license          "GPL"
description      "misc recipes for portfoliobuilder"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.markdown'))
version          "0.0.2"

depends 'elasticsearch'

provides 'tools'
provides 'tools::precompile_assets'
provides 'tools::setup_elasticsearch_nondata'