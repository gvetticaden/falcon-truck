#!/bin/bash
# Submit
/usr/lib/falcon-0.5-incubating-SNAPSHOT/bin/falcon entity -type cluster -submit -file /tmp/falcon-entity-defs/venkatdemo/demo-local/entity/primary-cluster.xml
/usr/lib/falcon-0.5-incubating-SNAPSHOT/bin/falcon entity -type cluster -submit -file /tmp/falcon-entity-defs/venkatdemo/demo-local/entity/bcp-cluster.xml

/usr/lib/falcon-0.5-incubating-SNAPSHOT/bin/falcon entity -type feed -submit -file /tmp/falcon-entity-defs/venkatdemo/demo-local/entity/raw-data-feed.xml
/usr/lib/falcon-0.5-incubating-SNAPSHOT/bin/falcon entity -type feed -submit -file /tmp/falcon-entity-defs/venkatdemo/demo-local/entity/cleansed-data-feed.xml
/usr/lib/falcon-0.5-incubating-SNAPSHOT/bin/falcon entity -type process -submit -file /tmp/falcon-entity-defs/venkatdemo/demo-local/entity/cleanse-process.xml

# Schedule
/usr/lib/falcon-0.5-incubating-SNAPSHOT/bin/falcon entity -type feed -schedule -name raw-data-feed
/usr/lib/falcon-0.5-incubating-SNAPSHOT/bin/falcon entity -type feed -schedule -name cleansed-data-feed
/usr/lib/falcon-0.5-incubating-SNAPSHOT/bin/falcon entity -type process -schedule -name cleanse-process
