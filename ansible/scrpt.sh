
#!/bin/sh

# See https://download.bareos.org/bareos/release/
# for applicable releases and distributions

DIST=EL_8
RELEASE=release/21
# add the Bareos repository
URL=https://download.bareos.org/bareos/$RELEASE/$DIST

wget -O /etc/yum.repos.d/bareos.repo $URL/bareos.repo

# install Bareos packages
yum install bareos bareos-database-postgresql -y

#su postgres -c /usr/lib/bareos/scripts/create_bareos_database
#su postgres -c /usr/lib/bareos/scripts/make_bareos_tables
#su postgres -c /usr/lib/bareos/scripts/grant_bareos_privileges
#systemctl start bareos-dir
#systemctl start bareos-sd
#systemctl start bareos-fd
#yum install bareos-webui -y

exit 0
