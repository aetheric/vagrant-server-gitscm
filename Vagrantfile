# vi: set ft=ruby :

Vagrant.configure('2') do |config|
	
	# Set up the box.
	config.vm.box = 'ubuntu64'
	config.vm.box_url = 'http://goo.gl/Y4aRr'

	# Set up the network.
	config.vm.hostname = 'gitscm'
	config.vm.network 'public_network', :use_dhcp_assigned_default_route => true
	config.vm.network 'forwarded_port', guest: 8026, host: 8080

	config.vm.provider :virtualbox do |vb|
		vb.name = 'server_gitscm'
		vb.customize [ 'modifyvm', :id, '--natdnshostresolver1', 'on' ]
		vb.customize [ 'modifyvm', :id, '--natdnsproxy1', 'on' ]
	end

	config.vm.provision :puppet do |puppet|
		puppet.manifests_path = 'puppet'
		puppet.manifest_file  = 'init.pp'
		puppet.module_path = 'puppet/modules'
	end

end
