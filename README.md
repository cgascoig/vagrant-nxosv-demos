# Puppet with NX-OSv Demo
This vagrant environment will build a Puppet master server and a number of virtual Nexus 9000 switches, each with the Puppet agent installed and configured to use the master. 

## Requirements
* Vagrant (tested on 1.8.7, but watch out for this issue if you're on MacOS Sierra https://github.com/mitchellh/vagrant/issues/5016#issuecomment-260065012)
* VirtualBox (tested with 5.0.16)
* NX-OSv box file: 
    * follow the instructions [here](http://www.cisco.com/c/en/us/td/docs/switches/datacenter/nexus9000/sw/7-x/nx-osv/configuration/guide/b_NX-OSv_9000/b_NX-OSv_chapter_01.html#reference_BAD5B5587C6B45AAB2FA462759DCCBD0) (the sections titled "Creating a VM in a VirtualBox Environment" through "Set Up SSH Passwordless Connection to VM").
    * export to a .box file: `vagrant package --base n9kv --output n9kv.box`


## Usage
* Import the .box file into the vagrant registry: `vagrant box add --name nxosv/evergreen n9kv.box`
* Start the master and a single n9kv: `vagrant up master n9kv1`
* SSH onto the NX-OSv: `vagrant ssh n9kv1`
* Start a puppet run based on the default manifest: `sudo /opt/puppetlabs/bin/puppet agent -t`