

node /^n9kv\d/ {
	package { 'cisco_node_utils' :
		provider => 'puppet_gem',
		ensure => present,
	}

	ntp_server {'10.66.141.50':
		ensure => present,
	}

	syslog_server {'10.67.28.129':
		ensure  => present,
	}

	cisco_ospf {'underlay':
		ensure	=> present,
	}

	cisco_interface {"Ethernet1/2":
 		ensure => present,
		description => "server-web",
		access_vlan	=>	100,
	}

}