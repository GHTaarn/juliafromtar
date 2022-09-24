#!/bin/sh
# To add a Julia version to the repository, do the following:
#
#  1. Generate the .deb files (e.g. with juliapt)
#  2. Copy (or move) the .deb files to docs/stable or docs/lts as appropriate
#  3. Run this script with:
#    ./build.sh
#  4. Add the changes to git with:
#     git add docs; git commit
#  5. To publish on Github just push the changes with:
#     git push
cd docs
dpkg-scanpackages --multiversion stable /dev/null | gzip -9c > stable/Packages.gz
dpkg-scanpackages --multiversion lts /dev/null | gzip -9c > lts/Packages.gz

