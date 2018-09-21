export ORACLE_HOSTNAME={{ ansible_hostname }}
export ORACLE_UNQNAME={{ oracle.unqname }}
export ORACLE_BASE={{ oracle.base }}
export ORACLE_HOME={{ oracle.home }}
export ORACLE_SID={{ oracle.sid }}
export LD_LIBRARY_PATH=$ORACLE_HOME/lib:/lib:/usr/lib 
export CLASSPATH=$ORACLE_HOME/jlib:$ORACLE_HOME/rdbms/jlib

cd {{ oracle.media.installer }}
chmod u+x {{ oracle.media.installer }}/runInstaller
{{ oracle.media.installer }}/runInstaller -silent -responseFile {{ oracle.media.installer }}/db_install.rsp  -waitforcompletion > {{ oracle.media.installer }}/runInstaller.log

 