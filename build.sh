cd docs
dpkg-scanpackages --multiversion stable /dev/null | gzip -9c > stable/Packages.gz
dpkg-scanpackages --multiversion lts /dev/null | gzip -9c > lts/Packages.gz

