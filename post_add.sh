#!/bin/bash
# add a new post file

title=$1
broad_date=$(date +%Y-%m-%d)
detail_date=$( date +"%Y-%m-%d %H:%M:%S" )

if [ -d "./_posts" ]
then
  f=_posts/$broad_date-$title.md
  touch $f
  echo "---" >> $f
  echo "layout: post" >> $f
  echo "title: \"$title\"" >> $f
  echo "date: $detail_date" >> $f
  echo "categories:" >> $f
  echo "---" >> $f
else
  echo "There is no '_posts' directory in this folder."
fi
