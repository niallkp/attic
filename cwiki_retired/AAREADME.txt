This directory contains marker files to indicate which
Wikis relate to retired projects

Wiki names are converted to lower case before comparison.
For example SQOOP has retired, so the directory contains the file sqoop.txt

The first line of the file can be used to override the name of the status file where the
wiki name is not the same. For example, eag.txt contains eagle. This means that the EAG Wiki banner
will link to https://attic.apache.org/projects/eagle.html 
rather than https://attic.apache.org/projects/eag.html

Note that retired podlings are handled separately. They need to be defined here:
https://github.com/apache/infrastructure-p6/tree/production/modules/cwiki_asf/files/retired_podlings
