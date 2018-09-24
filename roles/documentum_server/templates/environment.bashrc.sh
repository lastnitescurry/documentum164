# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

if [ -x {{ documentum_server.dm_home }}/bin/dm_set_server_env.sh ]
then
  # Documentum Install Owner, hence call set env
  . {{ documentum_server.dm_home }}/bin/dm_set_server_env.sh
  export LC_ALL=C
fi
