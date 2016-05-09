#!/bin/bash

# Make and chown influxdb data directories
if [ ! -d /data/influxdb ]
then
	mkdir /data/influxdb 
	chown influxdb:influxdb /data/influxdb
fi

# Make and chown grafana data directories
if [ ! -d /data/grafana ]
then
        mkdir /data/grafana
        chown grafana:grafana /data/grafana
        mv /usr/src/app/grafana/grafana.db /data/grafana/grafana.db
        chown grafana:grafana /data/grafana/grafana.db
fi

# Make and chown cbms data directories
if [ ! -d /data/cbms ]
then
	mv /var/cbms /data/cbms
fi

