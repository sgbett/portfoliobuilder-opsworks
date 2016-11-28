source 'https://api.berkshelf.com'

cookbook 'apt', '= 3.0.0' # another compat_resource dependancy with upgrade to 4!
cookbook 'ark', '= 2.0.0' # 2.0.1 uses multipackage installs which breaks on chef 11.x
cookbook 'build-essential', '= 3.2.0' # upgrade to 4 broke with compat_resource dependancy
cookbook 'elasticsearch', '= 0.3.13'
cookbook 'newrelic-sysmond'
cookbook 'opsworks_custom_env', git: 'git://github.com/sgbett/opsworks_custom_env.git'
cookbook 'windows', '=2.0.2' #another pinned dependancy to work around https://github.com/aws/opsworks-cookbooks/issues/383