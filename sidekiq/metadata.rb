name             "sidekiq"

maintainer       "sgbett"
maintainer_email "sgbett@remailer.org"
license          "GPL"
description      "opsworks service wrapper for sidekiq"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.markdown'))
version          "0.0.4"

provides 'sidekiq'
provides 'sidekiq::start'
#provides 'sidekiq::stop'
provides 'sidekiq::restart'
