Vagrant.configure(2) do |config|
  Encoding.default_external = 'UTF-8'
  config.vm.box = "centos07"
  config.vm.box_url = "https://f0fff3908f081cb6461b407be80daf97f07ac418.googledrive.com/host/0BwtuV7VyVTSkUG1PM3pCeDJ4dVE/centos7.box"
  config.vm.network "private_network", ip: "192.168.33.39"
  config.vm.provision "shell", path: "provision_vagrant.sh"
  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
  end
  config.vm.synced_folder ".", "/vagrant", type: "nfs"
end
