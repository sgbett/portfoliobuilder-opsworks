name             "portfoliobuilder-opsworks"

maintainer       "sgbett"
maintainer_email "sgbett@remailer.org"
license          "GPL"
description      "custom cookbook for portfoliobuilder opsworks stack"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.markdown'))
version          "0.0.1"

depends 'bigdesk'
depends 'tools'
depends 'kopf'
depends 'sidekiq'