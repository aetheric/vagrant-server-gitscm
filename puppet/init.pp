# vi: set ft=ruby :

class gitscm {

	package { 'wget':
		ensure => 'installed'
	}

	package { 'git':
		ensure => 'installed'
	}

	class { 'gerrit':
		gerrit_version => '2.8',
		gerrit_java => 'openjdk-7-jdk',
		gerrit_java_home => "/usr/lib/jvm/java-7-openjdk-${::architecture}/jre"
	}

}

include gitscm
