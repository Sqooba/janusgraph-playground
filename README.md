# janusgraph-playground
A Janusgraph plugged to single-nodes Cassandra &amp; Elasticsearch.

## Quickstart
Assuming you have a docker engine and `docker-compose` installed:
```
cd docker
docker-compose up
```
This starts & binds on `localhost`:
- Cassandra on ports 9042 (CQL) & 9160 (Thrift),
- Elasticsearch on port 9200,
- Kibana on port 5601,
- Janusgraph on port 8182 (Gremlin).
