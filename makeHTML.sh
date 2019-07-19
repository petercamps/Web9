#!/bin/bash
# (use "chmod +rx scriptname" to make script executable)
#
# Execute this script with "git" as default directory; use on Mac OS X only
#

# important note: in the interest of speed, this script does NOT update the
#                 Doxygen input pages that are generated from python scripts

# generate the html documentation in a folder next to the git folder
mkdir -p ../html
/Applications/Doxygen.app/Contents/Resources/doxygen doxygen/html_skirt.doxygen
/Applications/Doxygen.app/Contents/Resources/doxygen doxygen/html_pts.doxygen
/Applications/Doxygen.app/Contents/Resources/doxygen doxygen/html_version.doxygen

# copy redirecting index.html file
cp doxygen/index_root.html ../html/index.html
