#!/bin/sh
# https://blog.dbi-services.com/documentum-story-manual-deployment-of-x-dars-on-y-docbases

docbases={{ documentum_repository.name}}
dar_list="Smart Container.dar,Webtop.dar,Workflow.dar,Presets.dar,Webtop Express.dar,AdminAccess.dar,ResourceAgentsRegistry.dar,LDAP.dar,DCS Attachments.dar,MessagingApp.dar,Lifecycle.dar,ATMOS Plugin.dar,VIPR Plugin.dar,S3Plugin.dar,Swift Plugin.dar,Extended Search - Clustering.dar,Extended Search - SearchTemplates.dar,IndexAgentDefaultFilters.dar,qbs.dar,DmsClient.dar,Collaboration Services.dar,MailApp.dar"
username={{ documentum_server.user }}
password=xxx
dar_location=$DM_HOME/install/DARsInternal

# Source local environment, necessary if running from Ansible
. $DM_HOME/bin/dm_set_server_env.sh

for docbase in $docbases
do
  IFS=',' ; for dar in $dar_list
  do
    darname=${dar##*/}

    echo "Deploying $darname into $docbase"
    ts=$(date "+%Y%m%d-%H%M%S")

    $JAVA_HOME/bin/java -Ddar="$dar_location/$dar" \
      -Dlogpath="$dar_location/$darname-$docbase-$ts.log.txt" \
      -Ddocbase=$docbase -Duser=$username -Ddomain= -Dpassword="$password" \
      -Dinstallparam="$dar_location/installparam.xml" \
      -cp $DM_HOME/install/composer/ComposerHeadless/startup.jar \
      org.eclipse.core.launcher.Main \
      -data $DM_HOME/install/composer/workspace \
      -application org.eclipse.ant.core.antRunner \
      -buildfile $DM_HOME/install/composer/deploy.xml
  done
done
