#!/bin/bash

INPUT="${1^^}"
acronym=""

IFS='-, '
for word in $INPUT; do
    acronym="${acronym}${word:0:1}"
done

echo "$acronym"
