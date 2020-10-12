#!/bin/bash
set -e
TIMESTAMP=`date -u '+%Y-%m-%d %H:%M:%S'`
GITHEAD=`git rev-parse HEAD`
go install -ldflags '-X "main.BuildTimestamp=$TIMESTAMP" -X "main.Version=$GITHEAD"'
