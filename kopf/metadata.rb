name             "kopf"

maintainer       "sgbett"
maintainer_email "sgbett@remailer.org"
license          "GPL"
description      "opsworks install kopf plugin for elasticsearch"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.markdown'))
version          "0.0.1"

depends 'elasticsearch'

provides 'kopf'
