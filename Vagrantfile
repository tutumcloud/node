# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.provision "shell" do |s|
    s.inline = <<-SHELL
      : ${1:?"You must define a \\$TUTUM_TOKEN environment variable"}
      DEBIAN_FRONTEND=noninteractive sudo apt-get update
      DEBIAN_FRONTEND=noninteractive sudo apt-get install -yq curl
      DEBIAN_FRONTEND=noninteractive curl -Ls https://get.tutum.co/ | sudo -H sh -s $1
    SHELL
    s.args = "#{ENV['TUTUM_TOKEN']}"
  end
end
