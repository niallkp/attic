#!/usr/bin/env bash

# Script to sync Git content to legacy svn https://svn.apache.org/repos/asf/attic/site/cwiki_retired

[ -d .svn ] || svn co https://svn.apache.org/repos/asf/attic/site/cwiki_retired .svn-legacy

svn up .svn-legacy

cd .svn-legacy

# add new content
cp ../cwiki_retired/* .
svn add *

# eventually remove old content
for f in *
do
  [ -f ../cwiki_retired/$f ] || svn rm $f
done

svn ci -m "sync from Git commit $(git log -1 --pretty="%H")" .svn-legacy
