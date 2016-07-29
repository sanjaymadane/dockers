#!/bin/bash
set -m

if [ "$1" != "mongod" ]; then
    exec "$1"
fi

mongodb_cmd="mongod --storageEngine=mmapv1"
cmd="$mongodb_cmd --httpinterface --rest --master"
if [ "$AUTH" == "yes" ]; then
    cmd="$cmd --auth"
fi

if [ "$JOURNALING" == "yes" ]; then
    cmd="$cmd --journal"
fi

if [ "$OPLOG_SIZE" != "" ]; then
    cmd="$cmd --oplogSize $OPLOG_SIZE"
fi

$cmd &

if [ ! -f /data/db/.mongodb_password_set ]; then
    /set_mongodb_password.sh
fi

fg
