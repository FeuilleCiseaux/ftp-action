#!/bin/sh -l

lftp $INPUT_HOST -p 22 -u $INPUT_USER,$INPUT_PASSWORD -e "quit"
