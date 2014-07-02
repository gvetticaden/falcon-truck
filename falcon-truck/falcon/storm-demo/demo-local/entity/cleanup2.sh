!/bin/bash
falcon entity -type process -delete -name orc-conversion-process
falcon entity -type feed -delete -name  truck-events-orc-data-feed
falcon entity -type feed -delete -name  truck-events-raw-data-feed
falcon entity -type cluster -delete -name  george-cluster
