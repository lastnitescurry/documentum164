
### Generate and copy public SSH keys to remote hosts

  ssh-copy-id -i ~/.ssh/id_ecdsa vagrant@database
  ssh-copy-id -i ~/.ssh/id_ecdsa vagrant@documentum
  ssh-copy-id -i ~/.ssh/id_ecdsa vagrant@applications

##### test if desired

  ssh 'vagrant@database'
  
### Ansible PING

  export ANSIBLE_CONFIG=/vagrant/ansible/ansible.cfg
  echo $ANSIBLE_CONFIG
  cd /vagrant/ansible/
  ansible -m ping all
  

