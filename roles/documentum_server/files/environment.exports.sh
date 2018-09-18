if [ -f {{ documentum_server.dm_home }}/bin/dm_set_server_env.sh ]
then
  . {{ documentum_server.dm_home }}/bin/dm_set_server_env.sh
fi

export LC_ALL=C
