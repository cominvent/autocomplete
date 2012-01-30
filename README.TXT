####
#### Licensed to the Apache Software Foundation (ASF)
#### http://www.apache.org/licenses/LICENSE-2.0
#### See http://www.cominvent.com/?p=576 for instructions
####

AutoComplete example core
=========================
This is an example of how to do advanced super-flexible AutoComplete using a
dedicated Solr core. A blog post detailing the autocomplete technique is found 
at http://www.cominvent.com/?p=576

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
4. Goto http://localhost:8983/solr/ac/browse and start typing.
   The example data is country names and names of large cities from Geonames, and
   they are boosted by population so if you type 'c' you'll see China on top..

Using your own data
===================
Of course you want suggestions for your own data. The easiest is to start with the
exampledata/ac-example.csv file, keep the first line and enter your own data below.
Here is a short description of the columns and how they are configured to work in
Solr's schema.xml:
 id            : Unique id
 textsuggest   : Main text for matching and display
 subtext       : Extra text not being searched but displayed in ()
 extrasearch   : Extra text not being displayed but searched (full words only)
 extradisplay  : Extra text not being searched, for additional display
 type          : You may choose your own types, e.g. Country, City.
                 Each type will be suggested in its own section in the result
 action        : Optional field to give a hint to Ajax comp about what to do
                 when suggestion is clicked, e.g. search, jump-to-url etc
 value         : Optional field to give details about how to execute action
 popularity    : This number gets boosted into the score for relevancy tuning
 thumbnail_url : Example of extra data field to be able to display an image
 phonetic      : If filled, this suggestion will also be matched phonetically

To learn more about how the autoSuggester is built and how to tune further, read 
the blog post at http://www.cominvent.com/?p=576



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