# ~/.bashrc: executed by bash(1) for non-login shells.
# https://docs.ansible.com/ansible/latest/user_guide/playbooks_variables.html

if [ -f {{ oracle_home }}/bin/oracle_env.sh ]
then
  . {{ oracle_home }}/bin/oracle_env.sh
else
 export TMP=/tmp
 export TMPDIR=$TMP
 export ORACLE_HOSTNAME={{ ansible_hostname }}
 export ORACLE_UNQNAME={{ oracle_unqname }}
 export ORACLE_BASE={{ oracle_base }}
 export ORACLE_HOME={{ oracle_home }}
 export ORACLE_SID={{ oracle_sid }}
 export PATH=$ORACLE_HOME/bin:$PATH
 export LD_LIBRARY_PATH=$ORACLE_HOME/lib:/lib:/usr/lib 
 export CLASSPATH=$ORACLE_HOME/jlib:$ORACLE_HOME/rdbms/jlib
fi
