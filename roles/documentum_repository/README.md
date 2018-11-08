{{ documentum_server.dm_home }}/install/dm_launch_server_config_program.sh -f {{ documentum_server.documentum }}/config.repository.properties -r {{ documentum_server.documentum }}/response.repository.properties -i Silent

#### headless create repository 

    cat $DOCUMENTUM/config.repository.properties 
    $DM_HOME/install/dm_launch_server_config_program.sh -f $DOCUMENTUM/config.repository.properties -r $DOCUMENTUM/response.repository.properties -i Silent
