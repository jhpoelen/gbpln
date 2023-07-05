#!/bin/bash
#
# streams genbank flat file json records to stdout 
#
#

preston ls\
 | sed -E "s/<urn:uuid:+[a-f0-9-]+>[ ][.]$/ ./g"\
 | grep hasVersion\
 | sort\
 | uniq\
 | grep gb.*\.seq\.gz\
 | grep -v well-known\
 | parallel --linebuffer --pipe preston gb-stream
