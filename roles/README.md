### Ansible tutorial

To get started following: Ansible - A Beginner's Tutorial

- https://www.youtube.com/watch?v=icR-df2Olm8
- https://www.youtube.com/watch?v=pRZA9ymZXn0
- https://www.youtube.com/watch?v=jBiueVhDg1Q
- https://www.youtube.com/watch?v=aeGDc7rCK_0

### SSH
- https://stackoverflow.com/questions/39275038/auto-answer-ssh-copy-id-in-shell-script

#### Generate
    ssh-keygen -q -t ecdsa -b 521 -f ~/.ssh/id_ecdsa -N ""
    
#### Distribute public keys
    ssh-copy-id -i ~/.ssh/id_ecdsa vagrant@database
    ssh-copy-id -i ~/.ssh/id_ecdsa vagrant@documentum
    ssh-copy-id -i ~/.ssh/id_ecdsa vagrant@applications

#### test if desired
    ssh 'vagrant@database'
  
### Ansible - Ad hoc
#### Hello World

    export ANSIBLE_CONFIG=/vagrant/ansible.cfg
    echo $ANSIBLE_CONFIG
    cd /vagrant

- https://docs.ansible.com/ansible/latest/user_guide/intro_adhoc.html

    ansible -m ping all
    ansible -m shell -a 'hostname' all
    ansible -m shell -a 'df -h' all

#### Regular or super user?

    ansible -m shell -a 'whoami' all
    ansible -b -m shell -a 'whoami' all

##### Create a user and set passord

    ansible -b -m user -a 'name=brian' all
    ansible -b -m shell -a 'echo vagrant|passwd --stdin brian' all
   
### Ansible - Roles
##### Setup

    cd /vagrant/
    mkdir -p roles/basic/tasks
    touch roles/basic/tasks/main.yml
    touch playbook.yml

    mkdir -p roles/environment/tasks
    touch roles/environment/tasks/main.yml
    touch playbook.yml
    
##### Run
    ansible-playbook playbook.yml

### Ansible - Oracle 12c
##### Setup

    cd /vagrant/
    mkdir -p roles/oracle12c/tasks
    touch roles/oracle12c/tasks/main.yml
    mkdir -p roles/oracle12c/handlers
    touch roles/oracle12c/handlers/main.yml
        
##### Run
    ansible-playbook playbook.yml

### Oracle 12c
##### Manual to get correct parameters
    cd /tmp/database/
    /tmp/database/runInstaller -silent -responseFile /tmp/db_install.rsp
    
    rm -rf /tmp/OraInstall*

    
### Ansible - lookup

    {{ lookup('password', 'credentials/dbpassword.txt') }}
    
### Side tracked again
Ansible can use read hosts from YAML file, hence why not update Vagrant to also read same file. 
https://github.com/ansible/ansible/blob/devel/examples/hosts.yaml
