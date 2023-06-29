#!/bin/bash
#
# streams genbank flat file json records to stdout 
#
#

preston ls\
 | parallel --linebuffer --pipe preston gb-stream
