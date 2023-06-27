#!/bin/bash
#
# Lists Genbank Plant sequence entries (including fungi and algae)
#
# For more info, see https://ftp.ncbi.nlm.nih.gov/genbank/README.genbank 

preston track "https://ftp.ncbi.nlm.nih.gov/genbank/gbrel.txt"\
 | preston cat\
 | grep -oE "gbpln+[0-9]+[.]seq"\
 | sed 's+^+https://ftp.ncbi.nlm.nih.gov/genbank/+g'\
 | sed 's+$+.gz+g'
