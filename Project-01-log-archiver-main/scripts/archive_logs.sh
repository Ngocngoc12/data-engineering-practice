#!/bin/bash

LOG_DIR="../logs"
ARCHIVE_DIR="../archive"

echo "Extract ERROR logs..."

grep "ERROR" $LOG_DIR/*.log > errors.log

echo "Compress logs..."

tar -czf \
$ARCHIVE_DIR/logs_$(date +%Y%m%d).tar.gz \
$LOG_DIR/*.log

echo "Delete logs older than 7 days..."

find $LOG_DIR -name "*.log" -mtime +7 -delete

echo "Done!"