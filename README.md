# janusgraph-playground
A Janusgraph plugged to single-nodes Cassandra &amp; Elasticsearch.   
Some tools to explore graphs ([graphexp](https://github.com/armandleopold/graphexp), [graph-explorer](https://github.com/invanalabs/invana-studio)).   
And Jupyter Notebook with [AWS Graph Notebook](https://github.com/aws/graph-notebook) installed.

## Quickstart
Assuming you have a docker engine and `docker-compose` installed:
```
$ cd docker
$ docker-compose up -d
```
This starts & binds on `localhost`:
- Cassandra on ports 9042 (CQL) & 9160 (Thrift),
- Elasticsearch on port 9200,
- Kibana on port 5601,
- Janusgraph on port 8182 (Gremlin),
- Graphexp on port 80,
- Graph Explorer on port 8888,
- Jupyter Notebook on port 8080.

### Gremlin console
From the docker folder you can start a remote connection to the gremlin server:
```
$ ./gremlin-console.sh
```
To load an example graph, you can run the following command in the gremlin console:
```
gremlin> GraphOfTheGodsFactory.load(graph)
```
You can then run your first gremlin queries against the graph. For example:
```
gremlin> g.V().count()
```
This should output: `12`.

### Graphexp
Navigate to http://localhost and click on "Search".   
More here: [Github repository](https://github.com/armandleopold/graphexp)

### Graph Explorer
**WARNING: Not Chrome compatible. Use another browser like Safari e.g.**   
Navigate to http://localhost:8888 and start discovering.   
More here: [Github repository](https://github.com/invanalabs/invana-studio)

### Jupyter Notebook
Navigate to http://localhost:8080 and find a basic example in `03-Sqooba` folder.   
More here: [Github repository](https://github.com/aws/graph-notebook)

## Advanced

### Cassandra CQL
To get a `cqlsh` shell prompt, run:
```
$ ./cqlsh.sh 
```
To see all the existing databases (keyspaces), run the following CQL query:
```
cqlsh> DESCRIBE KEYSPACES;
```
If the startup step was successfull, you should see a `janusgraph` keyspace among others.

### Kibana
To access Kibana, simply navigate to http://localhost:5601/ with your browser.   
You might want to create an index pattern - `janusgraph*` e.g. - to start exploring the data.   
See the [Kibana index patterns documentation](https://www.elastic.co/guide/en/kibana/current/index-patterns.html) for more.
