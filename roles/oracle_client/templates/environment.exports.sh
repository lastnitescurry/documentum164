export ORACLE_HOSTNAME={{ ansible_hostname }}
export ORACLE_UNQNAME={{ oracle.unqname }}
export ORACLE_BASE={{ oracle.base }}
export ORACLE_HOME={{ oracle.home }}
export ORACLE_SID={{ oracle.sid }}
export PATH=$PATH:{{ oracle.home }}/bin
export LD_LIBRARY_PATH=/lib:/usr/lib:{{ oracle.home }}/lib
export CLASSPATH={{ oracle.home }}/jlib:{{ oracle.home }}/rdbms/jlib
