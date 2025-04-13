#!/usr/bin/env bash

# Script to sync Git content to legacy svn https://svn.apache.org/repos/asf/attic/site/

[ -d .svn ] || svn co https://svn.apache.org/repos/asf/attic/site/ .svn-legacy

svn up .svn-legacy

cp -r cwiki_retired xdocs .svn-legacy
cp -r xdocs/flagged .svn-legacy/docs

cd .svn-legacy
svn add *
svn ci -m "sync from Git commit $(git log -1 --pretty="%H")" .svn-legacy
