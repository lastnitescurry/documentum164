Create a dummy service which will trigger the start and stop of all others
http://alesnosek.com/blog/2016/12/04/controlling-a-multi-service-application-with-systemd/

Consolidate Documentum Stop Start under 1 service, calling sub services

## Service status, stop and start
  systemctl status documentum

systemctl status repository

    systemctl stop repository

    systemctl start repository
