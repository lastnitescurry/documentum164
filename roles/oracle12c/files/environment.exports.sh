# ~/.bashrc: executed by bash(1) for non-login shells.
# https://docs.ansible.com/ansible/latest/user_guide/playbooks_variables.html

if [ -f {{ oracle.home }}/bin/oracle_env.sh ]
then
  . {{ oracle.home }}/bin/oracle_env.sh
else
 export TMP=/tmp
 export TMPDIR=$TMP
 export ORACLE_HOSTNAME={{ ansible_hostname }}
 export ORACLE_UNQNAME={{ oracle.unqname }}
 export ORACLE_BASE={{ oracle.base }}
 export ORACLE_HOME={{ oracle.home }}
 export ORACLE_SID={{ oracle.sid }}
 export PATH=$ORACLE_HOME/bin:$PATH
 export LD_LIBRARY_PATH=$ORACLE_HOME/lib:/lib:/usr/lib 
 export CLASSPATH=$ORACLE_HOME/jlib:$ORACLE_HOME/rdbms/jlib
fi
