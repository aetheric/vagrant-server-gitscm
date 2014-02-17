# vi: set ft=ruby :

class gitscm {

	package { 'wget': }

	class { 'gerrit': 
		gerrit_version => '2.8',
		gerrit_java => 'openjdk-7-jdk',
	}

}

include gitscm
