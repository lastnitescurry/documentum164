### 99% based on Christos Vezalis work
- https://github.com/cvezalis/oracledb-ansible/blob/master/roles/oracle-install/tasks/main.yml
- https://github.com/cvezalis/oracledb-ansible/blob/master/roles/oracle-install/templates/dbca.rsp.j2

### Response file from:

	/opt/oracle/product/12.1.0.2/fgdb/assistants/dbca/dbca.rsp


### Example local login
Note password is generated on first run, see _credentials/oracle_database.txt_
 	
	sqlplus system/5E2bX4Wa0A2J8w4502q4

	sqlplus system/5E2bX4Wa0A2J8w4502q4@FGDB

## Systemd
#### Service status, stop and start
    systemctl status dbora

    systemctl stop dbora

    systemctl start dbora

#### Message from Journal
    journalctl -xe
