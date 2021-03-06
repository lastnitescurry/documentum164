Try the new way to create a stop and start for Docbroker

    /opt/documentum/dba/dm_stop_Docbroker
    /opt/documentum/dba/dm_launch_Docbroker

## Service status, stop and start
    systemctl status docbroker

    systemctl stop docbroker

    systemctl start docbroker

## References
- https://technet.sector19.net/linux/create-systemd-service-for-tomcat
- https://gist.github.com/zengxs/a697d786b244d7b857d3d006213306a1

#### 10.6. CREATING AND MODIFYING SYSTEMD UNIT FILES
- https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/7/html/system_administrators_guide/sect-managing_services_with_systemd-unit_files#ftn.idp25569112

#### delays between stop, restart and start of another process
- https://unix.stackexchange.com/questions/260973/adding-delay-between-stop-and-start-of-a-process-in-systemd
- https://stackoverflow.com/questions/43001223/how-to-ensure-that-there-is-a-delay-before-a-service-is-started-in-systemd

#### Tmp and logs clean with multiple pre Commands
- https://unix.stackexchange.com/questions/348450/confused-by-execstartpre-entries-in-systemd-unit-file

#### misc

- https://unix.stackexchange.com/questions/418851/location-to-place-systemd-service-environmentfile-when-creating-debian-package
- https://stegard.net/2016/08/gracefully-killing-a-java-process-managed-by-systemd
- https://askubuntu.com/questions/676007/how-do-i-make-my-systemd-service-run-via-specific-user-and-start-on-boot
- https://www.digitalocean.com/community/tutorials/systemd-essentials-working-with-services-units-and-the-journal
- https://www.certdepot.net/rhel7-get-started-systemd
- https://www.golinuxhub.com/2017/12/tutorial-cheatsheet-11-examples-to-use.html
- http://www.linux-magazine.com/Issues/2017/200/Tutorials-Systemd
- https://dacurry-tns.github.io/deploying-apereo-cas/setup_tomcat_configure-systemd-to-start-tomcat.html
- https://linuxize.com/post/how-to-install-tomcat-8-5-on-centos-7

##### reboot host
- https://www.certdepot.net/rhel7-boot-reboot-shut-system-normally
