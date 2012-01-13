####
#### Licensed to the Apache Software Foundation (ASF) http://www.apache.org/licenses/LICENSE-2.0
#### See http://www.cominvent.com/?p=576 for instructions
####
#!/bin/sh
curl "http://localhost:8983/solr/ac/update/csv?separator=;&commit=true" -H "Content-Type: text/plain; charset=utf-8" --data-binary @exampledata/ac-example.csv