#!/bin/sh

pandoc -f $INPUT_FORMAT -t $OUTPUT_FORMAT -o /host/$OUTPUT_FILENAME /host/$INPUT_FILENAME
