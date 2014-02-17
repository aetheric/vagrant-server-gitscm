# vi: set ft=ruby :

Vagrant.configure('2') do |config|
	config.vm.box = 'ubuntu64'
	config.vm.box_url = 'http://goo.gl/Y4aRr'
	config.vm.network 'public_network', :use_dhcp_assigned_default_route => true
	config.vm.hostname = 'gitscm'

	config.vm.provider :virtualbox do |vb|
		vb.name = 'server_gitscm'
	end

	config.vm.provision :puppet do |puppet|
		puppet.manifests_path = 'puppet'
		puppet.manifest_file  = 'init.pp'
		puppet.module_path = 'puppet/modules'
	end

end
