export LC_ALL=C
export HOME=/home/dmadmin
export DOCUMENTUM={{ documentum_server.documentum }}
export DOCUMENTUM_SHARED={{ documentum_server.dctm_shared }}
export DM_HOME={{ documentum_server.dm_home }}
export KEEP_TEMP_FILE=true

cd {{ documentum_server.media.installer }}
chmod u+x {{ documentum_server.media.installer }}/serverSetup.bin
{{ documentum_server.media.installer }}/serverSetup.bin -r response.cs.properties -i Silent -DSERVER.DOCUMENTUM={{ documentum_server.documentum }} -DAPPSERVER.SERVER_HTTP_PORT={{ documentum_server.jms.port }} -DAPPSERVER.SECURE.PASSWORD={{ lookup('password', 'credentials/documentum_server_jms.txt') }}
