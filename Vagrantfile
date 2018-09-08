# Read Servers from external YAML file. Credit where due
# https://github.com/scottishgovernment/mygovscot-puppet-blogpost
VAGRANTFILE_API_VERSION = "2"
require 'yaml'
directory = Pathname.new(File.realpath(__FILE__)).parent()
rpath = directory.relative_path_from(Pathname.new(File.absolute_path(__FILE__)).parent())
serversFile = File.exists?("servers.yaml") ? "servers.yaml" : directory.join("servers.yaml")
servers = YAML.load_file(serversFile)

# Enable host resolution by hardcoding each IP and hostname into /etc/hosts
allnodeshostsresolution = " "
servers.each do |server|
  allnodeshostsresolution = allnodeshostsresolution + "\n" + server["ip"] + "  " + server["name"]  + "  " + server["name"]  + ".fg.ie"
end
allnodeshostsresolution = "cat <<EOT >> /etc/hosts #{allnodeshostsresolution}\nEOT"
puts "#{allnodeshostsresolution}"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.ssh.forward_agent = true
  servers.each do |server|
    config.vm.define server["name"] do |cfg|

      cfg.vm.hostname = server["name"]
      cfg.vm.box = server["box"]
      if server["box_url"] != '' 
        cfg.vm.box_url = server["box_url"]
      end
      cfg.vm.network "private_network", ip: server["ip"]

      cfg.vm.provider "virtualbox" do |v|
        v.customize [
          "modifyvm",      :id,
          "--cpus",        server["cpu"]  || "2",
          "--memory",      server["ram"]  || "2048",
          "--name",        server["name"],
          "--description", server["desc"] || "Yet another Vagrant Controlled Cow",
          "--vram",        server["vram"] || "128",
        ]
      end

      if server["forwarded_port"] != '' 
        (server['forwarded_port'] || []).each do |i, port|
          if port['guest'] != '' && port['host'] != ''
            cfg.vm.network :forwarded_port, guest: port['guest'].to_i, host: port['host'].to_i
          end
        end
      end
      if server["synced_folder"] != '' 
        (server['synced_folder'] || []).each do |i, folder|
          if folder['local'] != '' && folder['remote'] != ''
            cfg.vm.synced_folder(folder['local'], folder['remote'], :mount_options => ["dmode=777","fmode=666"])
          end
        end
      end

      # Enable host resolution by hardcoding each IP and hostname into /etc/hosts
      cfg.vm.provision :shell, :inline => "#{allnodeshostsresolution}"

      if server["provision_shell"] != '' 
        (server['provision_shell'] || []).each do |i, shell|
          cfg.vm.provision :shell, :inline => "#{shell['inline']}"
        end
      end
    end
  end

end
