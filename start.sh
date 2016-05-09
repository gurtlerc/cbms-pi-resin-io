#!/bin/bash

# Make and chown influxdb data directories
if [ ! -f /data/influxdb ]
then
	mkdir /data/influxdb 
	chown influxdb:influxdb influxdb
fi

# Make and chown grafana data directories
if [ ! -f /data/grafana ]
then
        mkdir /data/grafana
        chown grafana:grafana /data/grafana
        mv /usr/src/app/grafana/grafana.db /data/grafana/grafana.db
        chown grafana:grafana /data/grafana/grafana.db
fi

# Make and chown cbms data directories
if [ ! -f /data/cbms ]
then
	mv /var/cbms /data/cbms
fi

