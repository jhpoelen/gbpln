#!/bin/bash
#
# lists all genbank flat file releases for plants (incl. Fungi Algae)
# , and track them using Preston
#

cat list-gbpln-files.sh\
 | preston track\
 | preston cat\
 | preston bash\
 | preston cat\
 | xargs -L50 preston track 
