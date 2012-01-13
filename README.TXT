####
#### Licensed to the Apache Software Foundation (ASF)
#### http://www.apache.org/licenses/LICENSE-2.0
#### See http://www.cominvent.com/?p=576 for instructions
####

AutoComplete example core
=========================
This is an example of how to do advanced super-flexible AutoComplete using a
dedicated Solr core. A blog post detailing the technique is found at
http://www.cominvent.com/?p=576

This code is intended as a template for you to get started. Normally you will copy
the "ac" folder, holding the configuration of the autocomplete core, into your own
multi core SolrHome, but for this simple example we assume that you run it
stand-alone in the provided solr-home.

We assume Linux/Mac/Cygwin, feel free to contribute start script for Windows :)

Quick start
===========
1. Set environment variable JETTY_HOME to your solr/example folder (solr3.x)
   export JETTY_HOME=/home/john/solr-3.5.0/solr/example
2. Start Solr using solr-home
   ./run-solr.sh
3. In another SHELL window, feed the example data (you need curl)
   ./feed-ac.sh
4. Goto http://localhost:8983/solr/ac/browse?q=*:* and start typing



About the data set
==================
We've used data from Geonames dataset, adapted for this example
Licensed under Creative Commons http://creativecommons.org/licenses/by/3.0/

Country names:
Deducted from http://download.geonames.org/export/dump/countryInfo.txt
We use country ISO code for extra search, Capital city as sub-text, population as
popularity

City names:
Deducted from http://download.geonames.org/export/dump/cities15000.zip, filtered
to cities with population above 100.000
We use the country as sub-text and
population as popularity

Flags:
Flags used in /browse GUI links to http://flags.blogpotato.de/ and are CC-by-sa
licensed