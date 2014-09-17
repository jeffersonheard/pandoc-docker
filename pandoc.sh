#!/bin/sh

mkdir -p /tmp
curl "$INPUT_URL" > /tmp/input.$INPUT_FORMAT
pandoc -f $INPUT_FORMAT -t $OUTPUT_FORMAT -o /tmp/output.$OUTPUT_FORMAT /tmp/input.$INPUT_FORMAT
curl --form "fileupload=@/tmp/output.$OUTPUT_FORMAT" "$RESPONSE_URL"

