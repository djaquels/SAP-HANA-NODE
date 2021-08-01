#!/bin/bash
docker run -p 8090:8090 -p 39013:39013 -p 39017:39017 -p 39041-39045:39041-39045 -p 1128-1129:1128-1129 -p 59013-59014:59013-59014 -v /home/daniel/Documents/SAP/data:/hana/mounts \
--ulimit nofile=1048576:1048576 \
--sysctl kernel.shmmax=1073741824 \
--sysctl net.ipv4.ip_local_port_range='40000 60999' \
--name hana_development  -h 8fd06b4ce7ab   \
store/saplabs/hanaexpress:2.00.054.00.20210603.1 \
--passwords-url file:///hana/mounts/credentials.json \
--agree-to-sap-license
