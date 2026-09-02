#!/bin/bash
# Deploy current working tree to the STAGING GitHub Pages repo (yonlad/portfolio-staging).
# Excludes CNAME (must never bind the real domain to staging) and adds robots.txt (noindex).
set -euo pipefail
SRC="$(cd "$(dirname "$0")" && pwd)"
TMP="$(mktemp -d)"
rsync -a --exclude .git --exclude CNAME --exclude .DS_Store --exclude deploy-staging.sh "$SRC/" "$TMP/"
printf 'User-agent: *\nDisallow: /\n' > "$TMP/robots.txt"
# staging must not pollute analytics: strip the GoatCounter script
find "$TMP" -name "*.html" -exec sed -i '' '/goatcounter/d' {} +
rm -f "$TMP/sitemap.xml"
cd "$TMP"
git init -q -b main
git add -A
git commit -q -m "staging deploy $(date +%Y-%m-%d-%H%M)"
git push -q --force "https://github.com/yonlad/portfolio-staging.git" main
rm -rf "$TMP"
echo "staged: https://yonlad.github.io/portfolio-staging/"
