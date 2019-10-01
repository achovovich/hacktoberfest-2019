#!/bin/sh
echo "Pushing..."
git add .
git commit -m "updating plots"
git remote remove origin
git remote add origin https://joelibaceta:${GITHUB_TOKEN}@github.com/joelibaceta/hacktoberfest-2019.git
git pull origin gh-pages
git push -u -f origin gh-pages