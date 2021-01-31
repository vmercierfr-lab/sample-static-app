#!/bin/sh

echo "Release of $(date)" > static/index.html
git commit static/index.html -m 'chore(release): New release'
git push
