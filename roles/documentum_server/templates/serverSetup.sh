export LC_ALL=C
export HOME=/home/{{ documentum_server.user }}
export DOCUMENTUM={{ documentum_server.documentum }}
export DOCUMENTUM_SHARED={{ documentum_server.dctm_shared }}
export DM_HOME={{ documentum_server.dm_home }}
export KEEP_TEMP_FILE=true

cd {{ documentum_server.media.tmpdir }}
chmod u+x {{ documentum_server.media.tmpdir }}/serverSetup.bin
{{ documentum_server.media.tmpdir }}/serverSetup.bin -r response.cs.properties -i Silent -DSERVER.DOCUMENTUM={{ documentum_server.documentum }} -DAPPSERVER.SERVER_HTTP_PORT={{ documentum_server.jms.port }} -DAPPSERVER.SECURE.PASSWORD={{ lookup('password', 'credentials/documentum_server_jms.txt chars=ascii_letters,digits,hexdigits') }}
