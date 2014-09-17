#!/bin/sh

curl "$INPUT_URL" > /host/$INPUT_FILENAME
pandoc -f $INPUT_FORMAT -t $OUTPUT_FORMAT -o /host/$OUTPUT_FILENAME /host/$INPUT_FILENAME
