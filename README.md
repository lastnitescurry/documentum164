# documentum164
Documentum 16.4 on Centos

## Commands

### Fire up all virtual machines

	C:\Windows\System32\cmd.exe /K "cd /d f:\PublicGitHub\documentum164"
	vagrant up

### Login into Ansible host

#### WORKAROUND Vagrant problem. Prevent hostname from binding to the loopback address
- https://github.com/hashicorp/vagrant/issues/7263

    sed -i '1d' /etc/hosts

and setup SSH
#### SSH - Generate
    ssh-keygen -q -t ecdsa -b 521 -f ~/.ssh/id_ecdsa -N ""
    
#### SSH - Distribute public keys
    ssh-copy-id -i ~/.ssh/id_ecdsa vagrant@database
    ssh-copy-id -i ~/.ssh/id_ecdsa vagrant@documentum
    ssh-copy-id -i ~/.ssh/id_ecdsa vagrant@applications
    ssh-copy-id -i ~/.ssh/id_ecdsa vagrant@ansible

#### SSH - test if desired
    ssh 'vagrant@database'
    ssh 'vagrant@documentum'
    ssh 'vagrant@applications'
    ssh 'vagrant@ansible'

#### Ansible - export ANSIBLE_CONFIG (because in world write folder)

    export ANSIBLE_CONFIG=/vagrant/ansible.cfg
    echo $ANSIBLE_CONFIG

##### Ansible - Run playbook
    cd /vagrant
    ansible-playbook playbook.yml

### Tear down and destroy all virtual machines
	
	C:\Windows\System32\cmd.exe /K "cd /d f:\PublicGitHub\documentum164"
	
	vagrant destroy -f


## References
Credit where due, using the solutions and hard work of other folks.
Hopefully my contribution will be some Documentum specific install examples

### Ansible

- https://docs.ansible.com/ansible/2.5/scenario_guides/guide_vagrant.html
- https://github.com/geerlingguy/packer-centos-7
- https://www.vagrantup.com/docs/provisioning/ansible_local.html
- https://www.vagrantup.com/docs/provisioning/ansible.html
- https://www.vagrantup.com/docs/provisioning/ansible_intro.html
- https://docs.ansible.com/ansible/latest/user_guide/playbooks_variables.html
- https://everythingshouldbevirtual.com/automation/ansible-using-set_facts-module/

#### Ben's IT Lessons - Ansible - A Beginner's Tutorial
- https://www.youtube.com/watch?v=icR-df2Olm8&t=482s
- https://www.ssh.com/ssh/keygen/
- https://www.ssh.com/ssh/copy-id

### Vagrant - Read servers from external file
- https://github.com/scottishgovernment/mygovscot-puppet-blogpost
- https://github.com/lastnitescurry/rpm-maven-plugin-apache-tomcat-packaging/blob/master/servers.yaml
- https://blog.scottlowe.org/2016/01/14/improved-way-yaml-vagrant/
- https://github.com/scottslowe/learning-tools/blob/master/vagrant/complex-yaml/Vagrantfile
- https://github.com/scottslowe/learning-tools/blob/master/vagrant/complex-yaml/machines.yml
- https://github.com/hashicorp/vagrant/issues/7263
- https://stackoverflow.com/questions/60904/how-can-i-open-a-cmd-window-in-a-specific-location

### LINUX 
file system... follow well proven standards
- https://en.wikipedia.org/wiki/Filesystem_Hierarchy_Standard
- https://linoxide.com/how-tos/change-linux-shell-prompt-with-different-colors/

### Oracle
#### Oracle XE

- https://github.com/d-snyder/ansible-oracle-xe
- https://github.com/fupelaqu/ansible-oraclexe

#### Oracle 12c

- https://www.nodalpoint.com/devops-ansible-oracle-database-oraclelinux-7-vagrant/
- https://github.com/cvezalis/oracledb-ansible.git
- https://www.nodalpoint.com/devops-ansible-oracle-database-oraclelinux-7-vagrant/

### Ruby
- https://alvinalexander.com/blog/post/ruby/how-write-text-to-file-ruby-example

##