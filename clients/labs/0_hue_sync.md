# Hue Unix Sync

```
$ sudo su -

$ export JAVA_HOME=/usr/java/jdk1.7.0_67-cloudera

$ export HUE_CONF_DIR="/var/run/cloudera-scm-agent/process/`ls -alrt /var/run/cloudera-scm-agent/process | grep HUE | tail -1 | awk '{print $9}'`"

$ HUE_IGNORE_PASSWORD_SCRIPT_ERRORS=1 HUE_DATABASE_PASSWORD=hue_password /opt/cloudera/parcels/CDH/lib/hue/build/env/bin/hue useradmin_sync_with_unix

```

After that, login with the admin user `giorgio-sonra` and add the user password and assign it into a hue's default group.
