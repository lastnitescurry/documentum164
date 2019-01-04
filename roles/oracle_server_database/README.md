### 99% based on Christos Vezalis work
- https://github.com/cvezalis/oracledb-ansible/blob/master/roles/oracle-install/tasks/main.yml
- https://github.com/cvezalis/oracledb-ansible/blob/master/roles/oracle-install/templates/dbca.rsp.j2

### Response file from:

	/opt/oracle/product/12.1.0.2/fgdb/assistants/dbca/dbca.rsp


### Example local login
Note password is generated on first run, see _credentials/oracle_database.txt_

	sqlplus system/ED0bAxeEjTf9A0A9KVrN

	sqlplus system/5E2bX4Wa0A2J8w4502q4@FGDB

## Systemd
#### Service status, stop and start
    systemctl status dbora

    systemctl stop dbora

    systemctl start dbora

#### Message from Journal

    journalctl -xe
		journalctl -u dbora.service

- https://www.digitalocean.com/community/tutorials/how-to-use-journalctl-to-view-and-manipulate-systemd-logs

## Message of the day
Display environment information and useful commands to user.

Simple option is static text in message of the day file.

### References
- http://blog.toracat.org/2013/04/customizing-welcome-message/
- https://serversforhackers.com/c/customize-your-login-screen-via-linuxs-message-of-the-day-ubuntucentos

### Maybe for future
#### neofetch
- https://github.com/dylanaraps/neofetch/wiki/Installation#fedora--rhel--centos--mageia
- https://superuser.com/questions/1168901/dnf-copr-plugin-not-present-in-dnf-plugins-core

    curl -o /etc/yum.repos.d/konimex-neofetch-epel-7.repo https://copr.fedorainfracloud.org/coprs/konimex/neofetch/repo/epel-7/konimex-neofetch-epel-7.repo
    dnf --assumeyes install neofetch
