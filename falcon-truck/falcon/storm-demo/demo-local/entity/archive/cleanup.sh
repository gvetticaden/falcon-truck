#!/bin/bash
/usr/lib/falcon-0.5-incubating-SNAPSHOT/bin/falcon entity -type process -delete -name cleanse-process
/usr/lib/falcon-0.5-incubating-SNAPSHOT/bin/falcon entity -type feed -delete -name raw-data-feed
/usr/lib/falcon-0.5-incubating-SNAPSHOT/bin/falcon entity -type feed -delete -name cleansed-data-feed
/usr/lib/falcon-0.5-incubating-SNAPSHOT/bin/falcon entity -type cluster -delete -name bcp-cluster
/usr/lib/falcon-0.5-incubating-SNAPSHOT/bin/falcon entity -type cluster -delete -name primary-cluster
