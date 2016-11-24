

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
  #
  # # Access port configuration
  # cisco_vlan {'100':
  #   vlan     => 100,
  #   vlan_name  => "web",
  #   state    => 'active',
  # }
  # cisco_interface {"Ethernet1/2":
  #      ensure      => present,
  #   description => "server-web",
  #   access_vlan  =>  100,
  # }
  #
  # # OSPF Configuration
  # cisco_ospf {'underlay':
  #   ensure  => present,
  # }
  #
  # cisco_interface {'Ethernet1/5':
  #   ensure      => present,
  #   description    => "Uplink to spine",
  #   switchport_mode  => 'disabled',
  # }
  #
  # cisco_interface_ospf {'Ethernet1/5 underlay':
  #   ensure      => present,
  #   ospf        => "underlay",
  #   area    => "0.0.0.0",
  # }
  #
  # # VRF Configuration
  # cisco_vrf {'tenant-1':
  #   ensure     => present,
  # }
  #
  # cisco_ospf_vrf {'underlay tenant-1':
  #   ensure      => present,
  #   default_metric  => '5',
  #   auto_cost    => '46000'
  # }



}