# Puppet with NX-OSv Demo
This vagrant environment will build a Puppet master server and two virtual Nexus 9000 switches, each with the Puppet agent installed and configured to use the master. 

## Requirements
See the README.md in the repository root for common requirements. 

## Usage
* Start the master and a single n9kv (recommended if you have 16GB or less RAM): `vagrant up master n9kv1`
    * Just run `vagrant up` if you have sufficient RAM and want to start all 3 VMs
* SSH onto the first NX-OSv: `vagrant ssh n9kv1`
* Start a puppet run based on the default manifest: `sudo /opt/puppetlabs/bin/puppet agent -t`
* Check the running configuration: `vsh -c 'show run'` (you can also just run `vsh` to drop into an NX-OS shell)
* Review and modify the sample Puppet manifest in `environment_production/manifests/site.pp` then re-run `sudo /opt/puppetlabs/bin/puppet agent -t` on the NX-OSv to see that the configuration is updated. 
* When you have finished, run `vagrant destroy` to terminate and remove all of the created VMs