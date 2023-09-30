#!/bin/bash

mongod --config /etc/mongod.conf

exec "$@"
