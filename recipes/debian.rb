package 'fontconfig'

#--------
# enable multiverse
#--------
# from http://askubuntu.com/a/173562
execute 'enable multiverse' do
  command "sed -i '/^# deb.*multiverse/ s/^# //' /etc/apt/sources.list"
  not_if "egrep '^deb.*multiverse' /etc/apt/sources.list"
  # notify "apt-get update" resource found in apt cookbook
  notifies :run, resources(execute: 'apt-get update'), :immediately
end

#--------
# install ttf-adf-gillius
#--------
apt_package 'ttf-adf-gillius' do
  version node['ttf-adf-gillius']['version']
  action :install # see actions section below
end
