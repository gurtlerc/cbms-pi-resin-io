#!/bin/bash

# Make and chown influxdb data directories
if [ ! -d /data/influxdb ]
then
	mkdir /data/influxdb 
	chown -R influxdb:influxdb /data/influxdb
fi

# Make and chown grafana data directories
if [ ! -d /data/grafana ]
then
        mkdir /data/grafana
        mv /usr/src/app/grafana/grafana.db /data/grafana/grafana.db
        chown -R grafana:grafana /data/grafana
fi

# Make and chown cbms data directories
if [ ! -d /data/cbms ]
then
	mv /var/cbms /data/cbms
	chown -R cbms:cbms /data/cbms
fi

echo "CBMS Studio Started"
