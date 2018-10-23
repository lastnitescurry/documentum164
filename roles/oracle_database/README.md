### 99% based on Christos Vezalis work
- https://github.com/cvezalis/oracledb-ansible/blob/master/roles/oracle-install/tasks/main.yml
- https://github.com/cvezalis/oracledb-ansible/blob/master/roles/oracle-install/templates/dbca.rsp.j2

### Response file from:

	/opt/oracle/product/12.1.0.2/fgdb/assistants/dbca/dbca.rsp


### Example local login
Note password is generated on first run, see _credentials/oracle_database.txt_
 	
	sqlplus system/6sEDuft4:d5sWZqoPWVP

	sqlplus system/6sEDuft4:d5sWZqoPWVP@FGDB
