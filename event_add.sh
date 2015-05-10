#!/bin/bash
# add a new event file

title=$1
broad_date=$(date +%Y-%m-%d)

if [ -d "./_recent_events" ]
then
  f=_recent_events/$title.md
  touch $f
  echo "---" >> $f
  echo "layout: event" >> $f
  echo "title: \"$title\"" >> $f
  echo "date: $broad_date" >> $f
  echo "---" >> $f
else
  echo "There is no '_recent_events' directory here."
fi
