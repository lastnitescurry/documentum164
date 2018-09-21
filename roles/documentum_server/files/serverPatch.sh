export LC_ALL=C
export HOME=/home/dmadmin
export DOCUMENTUM={{ documentum_server.documentum }}
export DOCUMENTUM_SHARED={{ documentum_server.dctm_shared }}
export DM_HOME={{ documentum_server.dm_home }}
export KEEP_TEMP_FILE=true

cd {{ documentum_server.patch.installer }}
chmod u+x {{ documentum_server.patch.installer }}/patch.bin
{{ documentum_server.patch.installer }}/patch.bin LAX_VM {{ documentum_server.dctm_shared }}/java64/JAVA_LINK/bin/java -r response.properties -i Silent -DUSER_SELECTED_PATCH_ZIP_FILE={{ documentum_server.patch.zip_file }}
