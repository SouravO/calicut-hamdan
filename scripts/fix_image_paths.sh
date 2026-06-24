#!/bin/bash
set -e
# Replaces occurrences like src="images/..." and data-src="images/..." with ./images/... across the site
# Also fixes CSS url(images/...) to url(./images/...)

for ext in html css js php; do
  find . -type f -name "*.${ext}" -print0 | xargs -0 perl -pi -e 's/(src|data-src|data-responsive|data-srcset)=(["\'])images\//$1=$2.\/images\//g' || true
  find . -type f -name "*.${ext}" -print0 | xargs -0 perl -pi -e 's{url\(\s*images/}{url(./images/}g' || true
done

echo "Done replacements."