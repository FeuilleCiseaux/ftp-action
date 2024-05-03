#!/bin/sh -l

lftp <<EOF 
set ssl:verify-certificate no  
set sftp:auto-confirm yes
open $INPUT_HOST -p 22 -u $INPUT_USER,$INPUT_PASSWORD
mirror $INPUT_REMOTEDIR $INPUT_LOCALDIR
EOF
