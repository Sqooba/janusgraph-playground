#!/bin/bash

docker-compose exec cassandra cqlsh $@
