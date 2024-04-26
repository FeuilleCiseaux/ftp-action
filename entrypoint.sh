#!/bin/sh -l

lftp $INPUT_HOST -p 22 -u $INPUT_USER,$INPUT_PASSWORD -e "set ftp:ssl-force $INPUT_FORCESSL; set ssl:verify-certificate false; mirror $INPUT_OPTIONS --continue --dereference $INPUT_REMOTEDIR $INPUT_LOCALDIR; quit"
