#!/bin/sh

echo $INPUT_URL
echo $INPUT_FORMAT
echo $OUTPUT_FORMAT
echo $RESPONSE_URL
echo $ABORT_URL

mkdir -p /tmp
curl "$INPUT_URL" > /tmp/input.$INPUT_FORMAT
pandoc -f $INPUT_FORMAT -t $OUTPUT_FORMAT -o /tmp/output.$OUTPUT_FORMAT /tmp/input.$INPUT_FORMAT
curl --form "fileupload=@/tmp/output.$OUTPUT_FORMAT" "$RESPONSE_URL"

