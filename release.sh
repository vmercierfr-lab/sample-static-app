#!/bin/sh

# Generate new tag
CURRENT_TAG=`git describe --abbrev=0 --tags`
VERSION_BITS=(${CURRENT_TAG//./ }) #replace . with space so can split into an array
NEW_TAG="${VERSION_BITS[0]}.${VERSION_BITS[1]}.$((${VERSION_BITS[2]}+1))"

echo "Release of $(date)" > static/index.html
git commit static/index.html -m 'chore(release): New release'
git tag ${NEW_TAG}
git push --tags
