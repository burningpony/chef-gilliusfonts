#
# Cookbook Name:: chef-ttf-adf-gillius
# Recipe:: default
#

#---------------
# install ttf-adf-gillius
#---------------
case node["platform"]
  #when "centos", "redhat", "scientific", "fedora"
    #include_recipe "chef-ttf-adf-gillius::rhel"
  when "ubuntu"
    include_recipe "chef-gilliusfonts::debian"
end

#---------------
# regenerate font cache
#---------------
execute "regenerate fontcache" do
  command "fc-cache -fv >/dev/null"
  action :nothing
end
