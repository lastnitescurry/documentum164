if [ -x {{ documentum_server.dm_home }}/bin/dm_set_server_env.sh ]
then
  # Documentum Install Owner, hence call set env
  . {{ documentum_server.dm_home }}/bin/dm_set_server_env.sh
  export LC_ALL=C
else
  # Non Documentum users can have a basic awarness
  export DOCUMENTUM={{ documentum_server.documentum }}
  export DOCUMENTUM_SHARED={{ documentum_server.dctm_shared }}
  export DM_HOME={{ documentum_server.dm_home }}
fi
