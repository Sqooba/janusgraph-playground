#!/bin/bash

docker-compose exec janusgraph bin/gremlin.sh -i scripts/connect.groovy $@
