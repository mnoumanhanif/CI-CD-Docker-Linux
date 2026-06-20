#!/bin/bash
set -e

REPORT_FILE="report.txt"

echo "Lecture 9 final test report" > "$REPORT_FILE"
echo "Generated at: $(date)" >> "$REPORT_FILE"
echo "Current folder: $(pwd)" >> "$REPORT_FILE"
echo "Workflow file: $(test -f .github/workflows/ci.yml && echo present || echo missing)" >> "$REPORT_FILE"

echo "Report written to $REPORT_FILE"
cat "$REPORT_FILE"