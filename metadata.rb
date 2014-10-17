name 'chef-gilliusfonts'
maintainer 'Russell Osborne'
maintainer_email 'russell@burningpony.com'
license 'Apache 2.0'
description 'Installs Gillus AFT fonts on ubuntu boxes'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.0.3'

depends 'apt'

supports 'ubuntu', '>= 10.04'
