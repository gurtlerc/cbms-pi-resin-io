#!/bin/bash

GRAFANA_DIR /data/grafana
INFUXDB_DIR /data/influxdb
CBMS_DIR /data/cbms

# Make and chown influxdb data directories
if [ ! -f $INFLUXDB_DIR ]
then
	mkdir $INFLUXDB_DIR
	cke and chown grafana data directories
if [ ! -f $GRAFANA_DIR ]
then
        mkdir $GRAFANA_DIR
        chown grafana:grafana $GRAFANA_DIR
        cp
fi
hown influxdb:influxdb $INFLUXDB_DIR
fi

# Make and chown cbms data directories
if [ ! -f $CBMS_DIR ]
then
	mv /var/cbms /data/cbms
fi

