#! /vendor/bin/sh

SILENT_LOGGING_9900=/data/vendor/gps/silentGnssLogging

CONFIGFILE=/vendor/etc/gnss/gps.cfg
DAEMONFILE=/vendor/bin/hw/gpsd

if [ -d "$SILENT_LOGGING_9900" ] ; then 
	CONFIGFILE=/vendor/etc/gnss/gps.debug.cfg
fi

exec $DAEMONFILE -c $CONFIGFILE
